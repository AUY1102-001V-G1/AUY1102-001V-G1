"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.IntegerMother = void 0;
const MotherCreator_1 = require("./MotherCreator");
class IntegerMother {
    static random(max) {
        return MotherCreator_1.MotherCreator.random().datatype.number();
    }
}
exports.IntegerMother = IntegerMother;
