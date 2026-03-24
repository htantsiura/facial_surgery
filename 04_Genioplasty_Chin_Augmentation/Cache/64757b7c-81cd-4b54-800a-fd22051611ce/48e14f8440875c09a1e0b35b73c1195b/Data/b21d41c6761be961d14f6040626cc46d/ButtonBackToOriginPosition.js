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
exports.ButtonBackToOriginPosition = void 0;
var __selfType = requireType("./ButtonBackToOriginPosition");
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
let ButtonBackToOriginPosition = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    var ButtonBackToOriginPosition = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.buttonMoveToOrigin = this.buttonMoveToOrigin;
            this.onPosChangedCallbacks = [];
            this.onRotChangedCallbacks = [];
        }
        __initialize() {
            super.__initialize();
            this.buttonMoveToOrigin = this.buttonMoveToOrigin;
            this.onPosChangedCallbacks = [];
            this.onRotChangedCallbacks = [];
        }
        onAwake() {
            this.objectTrf = this.getSceneObject().getParent().getTransform();
            this._originPos = this.objectTrf.getLocalPosition();
            this._originRot = this.objectTrf.getLocalRotation();
            // this.buttonMoveToOrigin.enabled = false;
            this.manipulate = this.getSceneObject().getComponent("Component.ManipulateComponent");
            if (this.manipulate) {
                // Сработает один раз, когда пользователь уберет палец
                this.manipulate.onManipulateEnd.add(() => {
                    // Передаем новую позицию в ваш сеттер (который вызовет колбэки)
                    this.currentPos = this.objectTrf.getLocalPosition();
                });
            }
            else {
                print("ManipulateComponent не найден!");
            }
            //         this.interaction = this.getSceneObject().getParent().getComponent("Component.InteractionComponent");
            //         if (this.interaction) {
            //             print("INTERACTION")
            //             this.interaction.onTouchMove.add(() => {
            //                 this.currentPos = this.objectTrf.getLocalPosition();
            //             });
            // /*             this.interaction.onTouchEnd.add(() => {
            //                 this.currentPos = this.objectTrf.getLocalPosition();
            //                 print("INTERACITON")
            //             }); */
            //         }
        }
        set currentPos(newPos) {
            if (this._currentPos && this._currentPos.equal(newPos)) {
                return;
            }
            this._currentPos = newPos;
            if (this._originPos && !this._originPos.equal(newPos)) {
                this.buttonMoveToOrigin.enabled = true;
            }
        }
        get currentPos() {
            return this._currentPos;
        }
        backToOrigin() {
            this.objectTrf.setLocalPosition(this._originPos);
            this.objectTrf.setLocalRotation(this._originRot);
            this.buttonMoveToOrigin.enabled = false;
        }
    };
    __setFunctionName(_classThis, "ButtonBackToOriginPosition");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        ButtonBackToOriginPosition = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return ButtonBackToOriginPosition = _classThis;
})();
exports.ButtonBackToOriginPosition = ButtonBackToOriginPosition;
//# sourceMappingURL=ButtonBackToOriginPosition.js.map