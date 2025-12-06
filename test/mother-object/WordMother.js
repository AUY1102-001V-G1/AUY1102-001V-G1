"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.WordMother = void 0;
const MotherCreator_1 = require("./MotherCreator");
class WordMother {
    static random(length = 5) {
        return MotherCreator_1.MotherCreator.random().lorem.word(length);
    }
}
exports.WordMother = WordMother;
