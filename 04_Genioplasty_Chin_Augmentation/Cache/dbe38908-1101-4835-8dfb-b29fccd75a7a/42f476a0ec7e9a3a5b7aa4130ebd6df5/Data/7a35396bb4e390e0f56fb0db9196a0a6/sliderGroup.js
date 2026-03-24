"use strict";
var __esDecorate = (this && this.__esDecorate) || function (ctor, descriptorIn, decorators, contextIn, initializers, extraInitializers) {
    function accept(f) { if (f !== void 0 && typeof f !== "function") throw new TypeError("Function expected"); return f; }
    var kind = contextIn.kind, key = kind === "getter" ? "get" : kind === "setter" ? "set" : "value";
    var target = !descriptorIn && ctor ? contextIn["static"] ? ctor : ctor.prototype : null;
    var descriptor = descriptorIn || (target ? Object.getOwnPropertyDescriptor(target, contextIn.name) : {});
    var _, done = false;
    for (var i = decorators.length - 1; i >= 0; i--) {
        var context = {};
        for (var p in contextIn) context[p] = p === "access" ? {} : contextIn[p];
        for (var p in contextIn.access) context.access[p] = contextIn.access[p];
        context.addInitializer = function (f) { if (done) throw new TypeError("Cannot add initializers after decoration has completed"); extraInitializers.push(accept(f || null)); };
        var result = (0, decorators[i])(kind === "accessor" ? { get: descriptor.get, set: descriptor.set } : descriptor[key], context);
        if (kind === "accessor") {
            if (result === void 0) continue;
            if (result === null || typeof result !== "object") throw new TypeError("Object expected");
            if (_ = accept(result.get)) descriptor.get = _;
            if (_ = accept(result.set)) descriptor.set = _;
            if (_ = accept(result.init)) initializers.unshift(_);
        }
        else if (_ = accept(result)) {
            if (kind === "field") initializers.unshift(_);
            else descriptor[key] = _;
        }
    }
    if (target) Object.defineProperty(target, contextIn.name, descriptor);
    done = true;
};
var __runInitializers = (this && this.__runInitializers) || function (thisArg, initializers, value) {
    var useValue = arguments.length > 2;
    for (var i = 0; i < initializers.length; i++) {
        value = useValue ? initializers[i].call(thisArg, value) : initializers[i].call(thisArg);
    }
    return useValue ? value : void 0;
};
var __setFunctionName = (this && this.__setFunctionName) || function (f, name, prefix) {
    if (typeof name === "symbol") name = name.description ? "[".concat(name.description, "]") : "";
    return Object.defineProperty(f, "name", { configurable: true, value: prefix ? "".concat(prefix, " ", name) : name });
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.sliderGroupextends = void 0;
var __selfType = requireType("./sliderGroup");
function component(target) {
    target.getTypeName = function () { return __selfType; };
    if (target.prototype.hasOwnProperty("getTypeName"))
        return;
    Object.defineProperty(target.prototype, "getTypeName", {
        value: function () { return __selfType; },
        configurable: true,
        writable: true
    });
}
let sliderGroupextends = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    var sliderGroupextends = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.sliderX = this.sliderX;
            this.sliderY = this.sliderY;
            this.sliderZ = this.sliderZ;
            this.textX = this.textX;
            this.textY = this.textY;
            this.textZ = this.textZ;
            this.mandobula = this.mandobula;
        }
        __initialize() {
            super.__initialize();
            this.sliderX = this.sliderX;
            this.sliderY = this.sliderY;
            this.sliderZ = this.sliderZ;
            this.textX = this.textX;
            this.textY = this.textY;
            this.textZ = this.textZ;
            this.mandobula = this.mandobula;
        }
        onAwake() {
            let mandibuleTrf = this.mandobula.getTransform();
            this._teethStartPos = mandibuleTrf.getLocalPosition();
            this._teethCurrentPos = mandibuleTrf.getLocalPosition();
            this.textX.text = "Position by X: ";
            this.textY.text = "Position by Y: ";
            this.textZ.text = "Position by Z: ";
            this.createEvent("OnStartEvent").bind(() => {
                this.sliderX.onValueChange.add((value) => {
                    let newPos = new vec3(this._teethCurrentPos.x + value / 100, this._teethCurrentPos.y, this._teethCurrentPos.z);
                    mandibuleTrf.setLocalPosition(newPos);
                    this._teethCurrentPos = newPos;
                    print(value);
                });
                this.sliderY.onValueChange.add((value) => {
                    print(value);
                });
                this.sliderZ.onValueChange.add((value) => {
                    print(value);
                });
            });
        }
    };
    __setFunctionName(_classThis, "sliderGroupextends");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        sliderGroupextends = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return sliderGroupextends = _classThis;
})();
exports.sliderGroupextends = sliderGroupextends;
//# sourceMappingURL=sliderGroup.js.map