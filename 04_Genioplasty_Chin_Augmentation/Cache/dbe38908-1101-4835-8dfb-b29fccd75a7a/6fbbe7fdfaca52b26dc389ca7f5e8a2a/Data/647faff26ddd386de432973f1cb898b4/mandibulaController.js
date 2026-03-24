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
exports.mandibulaController = void 0;
var __selfType = requireType("./mandibulaController");
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
const LSTween_1 = require("LSTween.lspkg/LSTween");
const Easing_1 = require("LSTween.lspkg/TweenJS/Easing");
let mandibulaController = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    var mandibulaController = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.sliderX = this.sliderX;
            this.sliderY = this.sliderY;
            this.sliderZ = this.sliderZ;
            this.textX = this.textX;
            this.textY = this.textY;
            this.textZ = this.textZ;
            this.mandobula = this.mandobula;
            this.skullMandibula = this.skullMandibula;
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
            this.skullMandibula = this.skullMandibula;
        }
        /* onAwake() {
    
            let teethTrf = this.mandobula.getTransform()
            let skullMandibulaTrf = this.skullMandibula.getTransform()
    
            this._teethStartPos = teethTrf.getLocalPosition()
            this._teethCurrentPos = teethTrf.getLocalPosition()
            this._skullMandStartPos = skullMandibulaTrf.getLocalPosition()
            this._skullMandCurrentPos = skullMandibulaTrf.getLocalPosition()
    
            this.textX.text = "Position by X: 0.0"
            this.textY.text = "Position by Y: 0.0"
            this.textZ.text = "Position by Z: 0.0"
    
            this.createEvent("OnStartEvent").bind(() => {
                this.sliderX.onValueChange.add((value) => {
                    let newPos = new vec3(this._teethCurrentPos.x + (value - 0.5) / 10, this._teethCurrentPos.y, this._teethCurrentPos.z )
                    teethTrf.setLocalPosition(newPos)
                    this.textX.text = "Position by X: " + ((value - 0.5) / 10).toFixed(3)
    
                })
                this.sliderY.onValueChange.add((value) => {
                    let newPos = new vec3(this._teethCurrentPos.x, this._teethCurrentPos.y + (value - 0.5) / 10, this._teethCurrentPos.z )
                    teethTrf.setLocalPosition(newPos)
                    this.textY.text = "Position by Y: " + ((value - 0.5) / 500).toFixed(5)
                })
                this.sliderZ.onValueChange.add((value) => {
                    let newPos = new vec3(this._teethCurrentPos.x, this._teethCurrentPos.y, this._teethCurrentPos.z + (value - 0.5) / 10 )
                    teethTrf.setLocalPosition(newPos)
                    this.textZ.text = "Position by Z: " + ((value - 0.5) / 10).toFixed(3)
    
                })
            })
    
    
        } */
        onAwake() {
            let teethTrf = this.mandobula.getTransform();
            let skullMandibulaTrf = this.skullMandibula.getTransform();
            this._teethStartPos = teethTrf.getLocalPosition();
            this._teethCurrentPos = teethTrf.getLocalPosition();
            this._skullMandStartPos = skullMandibulaTrf.getLocalPosition();
            this._skullMandCurrentPos = skullMandibulaTrf.getLocalPosition();
            this.textX.text = "Position by X: 0.0";
            this.textY.text = "Position by Y: 0.0";
            this.textZ.text = "Position by Z: 0.0";
            this.createEvent("OnStartEvent").bind(() => {
                this.sliderX.onValueChange.add((value) => {
                    let newTeethPos = this.newPositionBySlider("x", value, this._teethStartPos);
                    teethTrf.setLocalPosition(newTeethPos);
                    this.textX.text = "Position by X: " + ((value - 0.5) / 10).toFixed(3);
                });
                this.sliderY.onValueChange.add((value) => {
                    // let newPos = new vec3(this._teethCurrentPos.x, this._teethCurrentPos.y + (value - 0.5) / 10, this._teethCurrentPos.z )
                    let newTeethPos = this.newPositionBySlider("y", value, this._teethStartPos);
                    teethTrf.setLocalPosition(newTeethPos);
                    this.textY.text = "Position by Y: " + ((value - 0.5) / 500).toFixed(5);
                });
                this.sliderZ.onValueChange.add((value) => {
                    // let newPos = new vec3(this._teethCurrentPos.x, this._teethCurrentPos.y, this._teethCurrentPos.z + (value - 0.5) / 10 )
                    let newTeethPos = this.newPositionBySlider("z", value, this._teethStartPos);
                    teethTrf.setLocalPosition(newTeethPos);
                    this.textZ.text = "Position by Z: " + ((value - 0.5) / 10).toFixed(3);
                });
            });
        }
        newPositionBySlider(slider, value, pos) {
            let newPos = new vec3(0, 0, 0);
            if (slider === "x") {
                newPos.x = pos.x + (value - 0.5) / 10;
                this._teethCurrentPos.x = newPos.x;
                print(this._teethCurrentPos.x.toFixed(4) + ", " + this._teethCurrentPos.y.toFixed(4) + ", " + this._teethCurrentPos.z.toFixed(4));
                return newPos;
            }
            if (slider === "y") {
                newPos.y = pos.y + (value - 0.5) / 10;
                this._teethCurrentPos.y = newPos.y;
                print(this._teethCurrentPos.x.toFixed(4) + ", " + this._teethCurrentPos.y.toFixed(4) + ", " + this._teethCurrentPos.z.toFixed(4));
                return newPos;
            }
            if (slider === "z") {
                newPos.z = pos.z + (value - 0.5) / 10;
                this._teethCurrentPos.z = newPos.z;
                print(this._teethCurrentPos.x.toFixed(4) + ", " + this._teethCurrentPos.y.toFixed(4) + ", " + this._teethCurrentPos.z.toFixed(4));
                return newPos;
            }
        }
        /* onAwake() {
    
            let teethTrf = this.mandobula.getTransform()
            let skullMandibulaTrf = this.skullMandibula.getTransform()
    
            this._teethStartPos = teethTrf.getLocalPosition()
            this._teethCurrentPos = teethTrf.getLocalPosition()
            this._skullMandStartPos = skullMandibulaTrf.getLocalPosition()
            this._skullMandCurrentPos = skullMandibulaTrf.getLocalPosition()
    
            this.textX.text = "Position by X: 0.0"
            this.textY.text = "Position by Y: 0.0"
            this.textZ.text = "Position by Z: 0.0"
    
             this.createEvent("OnStartEvent").bind(() => {
                this.sliderX.onValueChange.add((value) => {
                    let newPosTeeth = this.newPositionBySlider("x", value, this._teethCurrentPos)
                    teethTrf.setLocalPosition(newPosTeeth)
                    this.textX.text = "Position by X: " + ((value - 0.5) / 10).toFixed(3)
    
                })
                this.sliderY.onValueChange.add((value) => {
                    let newPosTeeth = this.newPositionBySlider("y", value, this._teethCurrentPos)
                    teethTrf.setLocalPosition(newPosTeeth)
                    this.textY.text = "Position by Y: " + ((value - 0.5) / 10).toFixed(5)
                })
                this.sliderZ.onValueChange.add((value) => {
                    let newPosTeeth = this.newPositionBySlider("z", value, this._teethCurrentPos)
                    teethTrf.setLocalPosition(newPosTeeth)
                    this.textZ.text = "Position by Z: " + ((value - 0.5) / 10).toFixed(3)
    
                })
            })
    
    
        }
    
        private newPositionBySlider(slider, value, pos): vec3 {
            let newPos = new vec3(0, 0, 0)
            if(slider === "x") {
                newPos.x = pos.x + (value - 0.5) / 10
                return newPos
            }
            if(slider === "y") {
                newPos.y = pos.y + (value - 0.5) / 10
                return newPos
            }
            if(slider === "z") {
                newPos.z = pos.z + (value - 0.5) / 10
                return newPos
            }
            
        } */
        defaultPosition() {
            // this.sliderX.currentValue = 0.5
            this.sliderX.updateCurrentValue(0.5, true);
            this.sliderY.updateCurrentValue(0.5, true);
            this.sliderZ.updateCurrentValue(0.5, true);
            let transf1 = this.mandobula.getTransform();
            let transf2 = this.skullMandibula.getTransform();
            this.tweenFunc(transf1, this._teethStartPos, 500);
            this.tweenFunc(transf2, this._skullMandStartPos, 500);
        }
        tweenFunc(transform, pos, t) {
            LSTween_1.LSTween.moveToLocal(transform, pos, t)
                .easing(Easing_1.default.Quadratic.Out)
                .start();
        }
    };
    __setFunctionName(_classThis, "mandibulaController");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        mandibulaController = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return mandibulaController = _classThis;
})();
exports.mandibulaController = mandibulaController;
//# sourceMappingURL=mandibulaController.js.map