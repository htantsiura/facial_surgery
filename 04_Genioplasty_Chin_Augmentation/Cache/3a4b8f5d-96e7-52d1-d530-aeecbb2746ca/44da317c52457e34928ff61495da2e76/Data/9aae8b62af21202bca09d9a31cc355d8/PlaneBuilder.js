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
exports.PlaneBuilder = void 0;
var __selfType = requireType("./PlaneBuilder");
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
const Interactable_1 = require("SpectaclesInteractionKit.lspkg/Components/Interaction/Interactable/Interactable");
Interactable_1.Interactable;
let PlaneBuilder = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    var PlaneBuilder = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.cutToolControllerScript = this.cutToolControllerScript;
            this.point0 = this.point0;
            this.point1 = this.point1;
            this.point2 = this.point2;
            this.matToolMarker = this.matToolMarker;
            this.mesh = this.mesh;
            this.slicedMat = this.slicedMat;
            this.slicedMatInverted = this.slicedMatInverted;
        }
        __initialize() {
            super.__initialize();
            this.cutToolControllerScript = this.cutToolControllerScript;
            this.point0 = this.point0;
            this.point1 = this.point1;
            this.point2 = this.point2;
            this.matToolMarker = this.matToolMarker;
            this.mesh = this.mesh;
            this.slicedMat = this.slicedMat;
            this.slicedMatInverted = this.slicedMatInverted;
        }
        onAwake() {
            this.markerScale = new vec3(2, 2, 2);
            this.createEvent("UpdateEvent").bind(() => {
                this.point0.getTransform().setWorldScale(this.markerScale);
                this.point1.getTransform().setWorldScale(this.markerScale);
                this.point2.getTransform().setWorldScale(this.markerScale);
            });
            if (this.cutToolControllerScript) {
                // Подписываемся на изменения флага из ToolManager
                this.cutToolControllerScript.addOnStateChangedCallback((isActive) => {
                    this.updateObjectParameters(isActive);
                });
            }
            else {
                print("Не забудьте назначить ToolManager в инспекторе!");
            }
            this.createEvent("OnStartEvent").bind(() => {
                let interactable0 = this.point0.getComponent(Interactable_1.Interactable.getTypeName());
                let interactable1 = this.point1.getComponent(Interactable_1.Interactable.getTypeName());
                let interactable2 = this.point2.getComponent(Interactable_1.Interactable.getTypeName());
                if (interactable0.onDragUpdate) {
                    interactable0.onDragUpdate.add(() => {
                        this.rebuildMesh();
                        this.alignObject();
                        this.vectorsToShader();
                    });
                }
                if (interactable1.onDragUpdate) {
                    interactable1.onDragUpdate.add(() => {
                        this.rebuildMesh();
                        this.alignObject();
                        this.vectorsToShader();
                    });
                }
                if (interactable2.onDragUpdate) {
                    interactable2.onDragUpdate.add(() => {
                        this.rebuildMesh();
                        this.alignObject();
                        this.vectorsToShader();
                    });
                }
                this.rebuildMesh();
            });
        }
        rebuildMesh() {
            this.p0 = this.point0.getTransform().getLocalPosition();
            this.p1 = this.point1.getTransform().getLocalPosition();
            this.p2 = this.point2.getTransform().getLocalPosition();
            var builder = new MeshBuilder([
                { name: "position", components: 3 },
                { name: "normal", components: 3 },
                { name: "texture0", components: 2 },
            ]);
            builder.topology = MeshTopology.Triangles;
            builder.indexType = MeshIndexType.UInt16;
            builder.appendVerticesInterleaved([
                // Position                             Normal      UV       Index
                this.p0.x, this.p0.y, this.p0.z, 0, 0, 1, 1, 0, // 0
                this.p1.x, this.p1.y, this.p1.z, 0, 0, 1, 0, 0, // 1
                this.p2.x, this.p2.y, this.p2.z, 0, 0, 1, 0, 1, // 2
                // right, top, -1,      0, 0, 1,    1, 1,    // 3
            ]);
            builder.appendIndices([
                0, 1, 2, // First Triangle
                // 2,3,0, // Second Triangle
            ]);
            if (builder.isValid()) {
                this.getSceneObject().getComponent("RenderMeshVisual").mesh = builder.getMesh();
                builder.updateMesh();
            }
            else {
                print("Mesh data invalid!");
            }
        }
        alignObject() {
            // if(!this.followerObject) return;
            let v1 = this.p1.sub(this.p0);
            let v2 = this.p2.sub(this.p0);
            this.planeNormal = v1.cross(v2).normalize();
            print(this.planeNormal);
            let targetRotation = quat.rotationFromTo(vec3.up(), this.planeNormal);
            // this.followerObject.getTransform().setLocalRotation(targetRotation)
            this.centerPos = this.p0.add(this.p1).add(this.p2).uniformScale(1 / 3);
            // this.followerObject.getTransform().setLocalPosition(this.centerPos);
        }
        vectorsToShader() {
            if (!this.slicedMat)
                return;
            let matPass = this.slicedMat.mainPass;
            let matPassInverted = this.slicedMatInverted.mainPass;
            matPass.clipPosX = -this.planeNormal.x;
            matPass.clipPosY = -this.planeNormal.y;
            matPass.clipPosZ = -this.planeNormal.z;
            matPass.clipNomalX = this.centerPos.x;
            matPass.clipNomalY = this.centerPos.y;
            matPass.clipNomalZ = this.centerPos.z;
            matPassInverted.clipPosX = this.planeNormal.x;
            matPassInverted.clipPosY = this.planeNormal.y;
            matPassInverted.clipPosZ = this.planeNormal.z;
            matPassInverted.clipNomalX = this.centerPos.x;
            matPassInverted.clipNomalY = this.centerPos.y;
            matPassInverted.clipNomalZ = this.centerPos.z;
        }
        updateObjectParameters(isActive) {
            if (isActive) {
                print("Инструмент активен. Применяем новые параметры к объекту.");
            }
            else {
                print("Инструмент неактивен. Возвращаем исходные параметры.");
                this.matToolMarker.mainPass.isActive = 0;
                // this.parentInteractable.enabled = true
                // this.parentManipulation.enabled = true
            }
        }
    };
    __setFunctionName(_classThis, "PlaneBuilder");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        PlaneBuilder = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return PlaneBuilder = _classThis;
})();
exports.PlaneBuilder = PlaneBuilder;
//# sourceMappingURL=PlaneBuilder.js.map