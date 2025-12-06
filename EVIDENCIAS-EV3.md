
---

## 🐳 11. Implementación de Pipeline CI/CD con Docker

### Paso realizado:
Se implementó un pipeline completo de CI/CD con GitHub Actions que incluye:
- Dockerización de la aplicación con multi-stage build
- Construcción y publicación automática en Docker Hub
- Análisis de vulnerabilidades con Snyk, CodeQL y Docker Scout
- Pruebas automatizadas en cada push y pull request

### Archivos creados/modificados:
- `Dockerfile` - Multi-stage build optimizado
- `.dockerignore` - Exclusión de archivos innecesarios
- `sonar-project.properties` - Configuración de SonarCloud
- `.github/workflows/ci-cd-pipeline.yml` - Pipeline completo
- `.github/workflows/pr-analysis.yml` - Análisis de PRs

### Herramientas integradas:
- ✅ Docker (containerización)
- ✅ Docker Hub (registry de imágenes)
- ✅ Docker Scout (análisis de vulnerabilidades)
- ✅ Snyk (security scanning)
- ✅ SonarCloud (code quality)
- ✅ CodeQL (advanced security)
- ✅ Trufflehog (secret detection)

### Evidencias:
![Pipeline CI/CD ejecutándose](img/pipeline-cicd.png)
*Figura X: Ejecución del pipeline CI/CD completo.*

![Imagen Docker publicada](img/docker-hub.png)
*Figura X: Imagen Docker publicada en Docker Hub.*

---
