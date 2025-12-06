"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.Seasons = exports.SEASONS = void 0;
const enum_value_object_1 = require("../../../../../src/value-object/primitives/enum-value-object");
var SEASONS;
(function (SEASONS) {
    SEASONS["AUTUMN"] = "AUTUMN";
    SEASONS["WINTER"] = "WINTER";
    SEASONS["SPRING"] = "SPRING";
    SEASONS["SUMMER"] = "SUMMER";
})(SEASONS = exports.SEASONS || (exports.SEASONS = {}));
class Seasons extends enum_value_object_1.EnumValueObject {
    constructor(value) {
        super(value, Object.values(SEASONS));
    }
    throwErrorForInvalidValue(value) {
        throw new Error(`the value: ${value}, no exists on seasons`);
    }
}
exports.Seasons = Seasons;
