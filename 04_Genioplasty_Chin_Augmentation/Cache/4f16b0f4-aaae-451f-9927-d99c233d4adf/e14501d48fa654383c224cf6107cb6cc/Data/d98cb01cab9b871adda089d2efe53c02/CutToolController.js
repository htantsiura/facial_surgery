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
exports.CutToolController = void 0;
var __selfType = requireType("./CutToolController");
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
let CutToolController = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    var CutToolController = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.tool = this.tool;
            this.toolUI = this.toolUI;
            this.chinPosUI = this.chinPosUI;
            this.buttonText = this.buttonText;
            this.iconLock = this.iconLock;
            this.planeBuilderScript = this.planeBuilderScript;
            this.slidersMove = this.slidersMove;
            this.slidersRotate = this.slidersRotate;
            this._flag_toolIsActive = false;
            this.flag_toolIsOn = false;
            // private _isToolActive: boolean = false;
            this.onStateChangedCallbacks = [];
        }
        __initialize() {
            super.__initialize();
            this.tool = this.tool;
            this.toolUI = this.toolUI;
            this.chinPosUI = this.chinPosUI;
            this.buttonText = this.buttonText;
            this.iconLock = this.iconLock;
            this.planeBuilderScript = this.planeBuilderScript;
            this.slidersMove = this.slidersMove;
            this.slidersRotate = this.slidersRotate;
            this._flag_toolIsActive = false;
            this.flag_toolIsOn = false;
            // private _isToolActive: boolean = false;
            this.onStateChangedCallbacks = [];
        }
        onAwake() {
            this._flag_toolIsActive = false;
            this.flag_toolIsOn = false;
            this.iconLock.enabled = false;
            this.createEvent("OnStartEvent").bind(() => {
                this.deactivateCutTool();
            });
        }
        deactivateCutTool() {
            this.buttonText.text = "Activate";
            this.iconLock.enabled = false;
            this.isToolActive = false;
        }
        activateCutTool() {
            this.buttonText.text = "Deactivate";
            this.iconLock.enabled = true;
            this.isToolActive = true;
        }
        buttonActivateDeactivate() {
            if (!this._flag_toolIsActive) {
                this.activateCutTool();
            }
            else {
                this.deactivateCutTool();
            }
        }
        buttonNext() {
            this.chinPosUI.enabled = true;
            this.toolUI.enabled = false;
            this.tool.enabled = false;
            this.flag_toolIsOn = false;
            this.isToolActive = false;
            this.deactivateCutTool();
        }
        buttonBack() {
            this.chinPosUI.enabled = false;
            this.toolUI.enabled = true;
            this.tool.enabled = true;
            this.flag_toolIsOn = true;
            this.isToolActive = true;
            this.activateCutTool();
        }
        buttonCutTool() {
            if (!this.flag_toolIsOn) {
                this.tool.enabled = true;
                this.activateCutTool();
                this.toolUI.enabled = true;
                this.flag_toolIsOn = true;
            }
            else {
                this.tool.enabled = false;
                this.deactivateCutTool();
                this.toolUI.enabled = false;
                this.flag_toolIsOn = false;
            }
        }
        buttonMove() {
        }
        buttonRotate() {
        }
        addOnStateChangedCallback(callback) {
            this.onStateChangedCallbacks.push(callback);
        }
        set isToolActive(value) {
            if (this._flag_toolIsActive === value)
                return;
            this._flag_toolIsActive = value;
            for (let i = 0; i < this.onStateChangedCallbacks.length; i++) {
                this.onStateChangedCallbacks[i](value);
            }
        }
    };
    __setFunctionName(_classThis, "CutToolController");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        CutToolController = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return CutToolController = _classThis;
})();
exports.CutToolController = CutToolController;
//# sourceMappingURL=CutToolController.js.map