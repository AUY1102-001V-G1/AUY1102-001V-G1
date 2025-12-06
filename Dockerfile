# ==============================================================================
# STAGE 1: BUILDER - Compila el código TypeScript
# ==============================================================================
FROM node:18-alpine AS builder

WORKDIR /app

LABEL maintainer="AUY1102 Students"
LABEL description="Node.js TypeScript Application - Builder Stage"

# Copiar archivos de dependencias
COPY package*.json ./

# Instalar TODAS las dependencias
RUN npm ci

# Copiar código fuente
COPY . .

# Construir la aplicación
RUN npm run build

# ==============================================================================
# STAGE 2: RUNTIME - Imagen final optimizada
# ==============================================================================
FROM node:18-alpine

WORKDIR /app

LABEL maintainer="AUY1102 Students"
LABEL description="Node.js TypeScript Application - Runtime"
LABEL version="1.0"

# Instalar dumb-init
RUN apk add --no-cache dumb-init

# Copiar archivos compilados del builder
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/package*.json ./
COPY --from=builder /app/node_modules ./node_modules

# Crear usuario no-root
RUN addgroup -g 1001 -S nodejs && \
    adduser -S nodejs -u 1001

# Cambiar propietario
RUN chown -R nodejs:nodejs /app

# Cambiar a usuario no-root
USER nodejs

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD node -e "require('http').get('http://localhost:3000/health', (r) => {if (r.statusCode !== 200) throw new Error(r.statusCode)})" || exit 1

# Exponer puerto
EXPOSE 3000

# Entrypoint
ENTRYPOINT ["dumb-init", "--"]

# Comando
CMD ["node", "dist/index.js"]

