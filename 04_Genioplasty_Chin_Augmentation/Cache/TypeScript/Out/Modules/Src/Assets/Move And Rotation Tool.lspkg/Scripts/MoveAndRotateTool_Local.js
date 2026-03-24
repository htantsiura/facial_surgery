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
exports.MoveAndRotateTool = void 0;
var __selfType = requireType("./MoveAndRotateTool_Local");
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
let MoveAndRotateTool = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    var MoveAndRotateTool = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.interactable = this.interactable;
            this.interactableRotX = this.interactableRotX;
            this.interactableRotY = this.interactableRotY;
            this.interactableRotZ = this.interactableRotZ;
            this.object = this.object;
            this.parent = this.parent;
            this.speedCoef = this.speedCoef;
            this.mat = this.mat;
            this.matRot = this.matRot;
        }
        __initialize() {
            super.__initialize();
            this.interactable = this.interactable;
            this.interactableRotX = this.interactableRotX;
            this.interactableRotY = this.interactableRotY;
            this.interactableRotZ = this.interactableRotZ;
            this.object = this.object;
            this.parent = this.parent;
            this.speedCoef = this.speedCoef;
            this.mat = this.mat;
            this.matRot = this.matRot;
        }
        onAwake() {
            this.speedCoef = this.speedCoef / 100;
            if (!this.interactable) {
                print("Добавь Interactable в скрипт!");
                return;
            }
            this.createEvent("OnStartEvent").bind(() => {
                this.interactable.onTriggerUpdate.add((event) => {
                    const hitInfo = event.interactor.targetHitInfo;
                    if (!hitInfo || !hitInfo.hit)
                        return;
                    const hitNormal = hitInfo.hit.normal;
                    const transform = this.sceneObject.getTransform();
                    const right = transform.right; // Локальная ось X (Вправо)
                    const up = transform.up; // Локальная ось Y (Вверх)
                    const forward = transform.forward; // Локальная ось Z (Вперед)
                    // Сравниваем нормаль с осями объекта. 
                    // Скалярное произведение (Dot Product) равно 1, если направления идеально совпадают.
                    // Берем порог 0.5 на случай, если нажатие пошло немного по касательной.
                    const threshold = 0.5;
                    let objPos = this.object.getTransform().getLocalPosition();
                    let newPos = new vec3(objPos.x, objPos.y, objPos.z);
                    if (hitNormal.dot(right) < -threshold) {
                        print("👉");
                        newPos = new vec3(objPos.x + this.speedCoef, objPos.y, objPos.z);
                        this.index = 0;
                    }
                    else if (hitNormal.dot(right) > threshold) {
                        print("👈");
                        newPos = new vec3(objPos.x - this.speedCoef, objPos.y, objPos.z);
                        this.index = 1;
                    }
                    else if (hitNormal.dot(up) < -threshold) {
                        print("👆");
                        newPos = new vec3(objPos.x, objPos.y + this.speedCoef, objPos.z);
                        this.index = 2;
                    }
                    else if (hitNormal.dot(up) > threshold) {
                        print("👇");
                        newPos = new vec3(objPos.x, objPos.y - this.speedCoef, objPos.z);
                        this.index = 3;
                    }
                    else if (hitNormal.dot(forward) < -threshold) {
                        print("🖐");
                        newPos = new vec3(objPos.x, objPos.y, objPos.z + this.speedCoef);
                        this.index = 4;
                    }
                    else if (hitNormal.dot(forward) > threshold) {
                        print("🤚");
                        newPos = new vec3(objPos.x, objPos.y, objPos.z - this.speedCoef);
                        this.index = 5;
                    }
                    this.object.getTransform().setLocalPosition(newPos);
                    this.mat[this.index].mainPass.isActive = 1;
                });
                this.interactable.onTriggerEndOutside.add(() => {
                    print("End");
                    for (let i = 0; i < this.mat.length; i++) {
                        this.mat[i].mainPass.isActive = 0;
                    }
                    this.updatePosition();
                });
                this.interactable.onTriggerEnd.add(() => {
                    print("End");
                    for (let i = 0; i < this.mat.length; i++) {
                        this.mat[i].mainPass.isActive = 0;
                    }
                    this.updatePosition();
                });
                this.interactableRotX.onTriggerUpdate.add((event) => {
                    const hitInfo = event.interactor.targetHitInfo;
                    if (!hitInfo || !hitInfo.hit)
                        return;
                    const hitNormal = hitInfo.hit.normal;
                    const transform = this.sceneObject.getTransform();
                    const right = transform.right; // Локальная ось X (Вправо)
                    const up = transform.up; // Локальная ось Y (Вверх)
                    const forward = transform.forward; // Локальная ось Z (Вперед)
                    // Сравниваем нормаль с осями объекта. 
                    // Скалярное произведение (Dot Product) равно 1, если направления идеально совпадают.
                    // Берем порог 0.5 на случай, если нажатие пошло немного по касательной.
                    const threshold = 0.0;
                    let objRot = this.object.getTransform().getLocalRotation();
                    let newRot = new quat(objRot.x, objRot.y, objRot.z, objRot.w);
                    let deltaRot = quat.fromEulerAngles(this.speedCoef / 5, 0, 0);
                    /* if (hitNormal.dot(right) < -threshold) {
                        print("👉");
                        // newPos = new vec3(objPos.x + this.speedCoef, objPos.y, objPos.z)
                        // this.index = 0
                    } else if (hitNormal.dot(right) > threshold) {
                        print("👈");
                        // newPos = new vec3(objPos.x - this.speedCoef, objPos.y, objPos.z)
                        // this.index = 1
                    } else if (hitNormal.dot(up) < -threshold) {
                        print("👆");
                        // newRot = objRot.multiply(deltaRot)
                        // this.index = 0
                        // this.indexRot = 0
                    } else if (hitNormal.dot(up) > threshold) {
                        print("👇");
                        // newRot = objRot.multiply(deltaRot)
                        // this.index = 0
                        // this.indexRot = 0
                    } else */ if (hitNormal.dot(forward) < -threshold) {
                        print("🖐");
                        newRot = objRot.multiply(deltaRot);
                        this.index = 0;
                        this.indexRot = 0;
                    }
                    else if (hitNormal.dot(forward) > threshold) {
                        print("🤚");
                        newRot = objRot.multiply(deltaRot.invert());
                        this.index = 0;
                        this.indexRot = 0;
                    }
                    this.object.getTransform().setLocalRotation(newRot);
                    this.mat[this.index].mainPass.isActive = 1;
                    this.matRot[this.indexRot].mainPass.isActive = 1;
                });
                this.interactableRotX.onTriggerEndOutside.add(() => {
                    print("End");
                    for (let i = 0; i < this.mat.length; i++) {
                        this.mat[i].mainPass.isActive = 0;
                    }
                    for (let i = 0; i < this.matRot.length; i++) {
                        this.matRot[i].mainPass.isActive = 0;
                    }
                    this.updatePosition();
                });
                this.interactableRotX.onTriggerEnd.add(() => {
                    print("End");
                    for (let i = 0; i < this.mat.length; i++) {
                        this.mat[i].mainPass.isActive = 0;
                    }
                    for (let i = 0; i < this.matRot.length; i++) {
                        this.matRot[i].mainPass.isActive = 0;
                    }
                    this.updatePosition();
                });
                this.interactableRotY.onTriggerUpdate.add((event) => {
                    const hitInfo = event.interactor.targetHitInfo;
                    if (!hitInfo || !hitInfo.hit)
                        return;
                    const hitNormal = hitInfo.hit.normal;
                    const transform = this.sceneObject.getTransform();
                    const right = transform.right; // Локальная ось X (Вправо)
                    const up = transform.up; // Локальная ось Y (Вверх)
                    const forward = transform.forward; // Локальная ось Z (Вперед)
                    // Сравниваем нормаль с осями объекта. 
                    // Скалярное произведение (Dot Product) равно 1, если направления идеально совпадают.
                    // Берем порог 0.5 на случай, если нажатие пошло немного по касательной.
                    const threshold = 0.00;
                    let objRot = this.object.getTransform().getLocalRotation();
                    let newRot = new quat(objRot.x, objRot.y, objRot.z, objRot.w);
                    let deltaRot = quat.fromEulerAngles(0, this.speedCoef / 5, 0);
                    if (hitNormal.dot(right) < -threshold) {
                        print("👉");
                        newRot = objRot.multiply(deltaRot);
                        this.index = 2;
                        this.indexRot = 1;
                    }
                    else if (hitNormal.dot(right) > threshold) {
                        print("👈");
                        newRot = objRot.multiply(deltaRot.invert());
                        this.index = 2;
                        this.indexRot = 1;
                    } /* else if (hitNormal.dot(up) < -threshold) {
                        print("👆");
                        newRot = objRot.multiply(deltaRot)
                        this.index = 2
                        this.indexRot = 1
                    } else if (hitNormal.dot(up) > threshold) {
                        print("👇");
                        newRot = objRot.multiply(deltaRot)
                        this.index = 2
                        this.indexRot = 1
                    } else if (hitNormal.dot(forward) < -threshold) {
                        newRot = objRot.multiply(deltaRot)
                        this.index = 2
                        this.indexRot = 1
                    } else if (hitNormal.dot(forward) > threshold) {
                        print("🤚");
                        newRot = objRot.multiply(deltaRot)
                        this.index = 2
                        this.indexRot = 1
                    } */
                    this.object.getTransform().setLocalRotation(newRot);
                    this.mat[this.index].mainPass.isActive = 1;
                    this.matRot[this.indexRot].mainPass.isActive = 1;
                });
                this.interactableRotY.onTriggerEndOutside.add(() => {
                    print("End");
                    for (let i = 0; i < this.mat.length; i++) {
                        this.mat[i].mainPass.isActive = 0;
                    }
                    for (let i = 0; i < this.matRot.length; i++) {
                        this.matRot[i].mainPass.isActive = 0;
                    }
                    this.updatePosition();
                });
                this.interactableRotY.onTriggerEnd.add(() => {
                    print("End");
                    for (let i = 0; i < this.mat.length; i++) {
                        this.mat[i].mainPass.isActive = 0;
                    }
                    for (let i = 0; i < this.matRot.length; i++) {
                        this.matRot[i].mainPass.isActive = 0;
                    }
                    this.updatePosition();
                });
                this.interactableRotZ.onTriggerUpdate.add((event) => {
                    const hitInfo = event.interactor.targetHitInfo;
                    if (!hitInfo || !hitInfo.hit)
                        return;
                    const hitNormal = hitInfo.hit.normal;
                    const transform = this.sceneObject.getTransform();
                    const right = transform.right; // Локальная ось X (Вправо)
                    const up = transform.up; // Локальная ось Y (Вверх)
                    const forward = transform.forward; // Локальная ось Z (Вперед)
                    // Сравниваем нормаль с осями объекта. 
                    // Скалярное произведение (Dot Product) равно 1, если направления идеально совпадают.
                    // Берем порог 0.5 на случай, если нажатие пошло немного по касательной.
                    const threshold = 0.00;
                    let objRot = this.object.getTransform().getLocalRotation();
                    let newRot = new quat(objRot.x, objRot.y, objRot.z, objRot.w);
                    let deltaRot = quat.fromEulerAngles(0, 0, this.speedCoef / 5);
                    /* if (hitNormal.dot(right) < -threshold) {
                        print("👉");
                        newRot = objRot.multiply(deltaRot)
                        this.index = 2
                        this.indexRot = 1
                    } else if (hitNormal.dot(right) > threshold) {
                        print("👈");
                        newRot = objRot.multiply(deltaRot.invert())
                        this.index = 2
                        this.indexRot = 1
                    } else  */ if (hitNormal.dot(up) < -threshold) {
                        print("👆");
                        newRot = objRot.multiply(deltaRot);
                        this.index = 4;
                        this.indexRot = 2;
                    }
                    else if (hitNormal.dot(up) > threshold) {
                        print("👇");
                        newRot = objRot.multiply(deltaRot.invert());
                        this.index = 4;
                        this.indexRot = 2;
                    } /* else if (hitNormal.dot(forward) < -threshold) {
                        newRot = objRot.multiply(deltaRot)
                        this.index = 2
                        this.indexRot = 1
                    } else if (hitNormal.dot(forward) > threshold) {
                        print("🤚");
                        newRot = objRot.multiply(deltaRot)
                        this.index = 2
                        this.indexRot = 1
                    } */
                    this.object.getTransform().setLocalRotation(newRot);
                    this.mat[this.index].mainPass.isActive = 1;
                    this.matRot[this.indexRot].mainPass.isActive = 1;
                });
                this.interactableRotZ.onTriggerEndOutside.add(() => {
                    print("End");
                    for (let i = 0; i < this.mat.length; i++) {
                        this.mat[i].mainPass.isActive = 0;
                    }
                    for (let i = 0; i < this.matRot.length; i++) {
                        this.matRot[i].mainPass.isActive = 0;
                    }
                    this.updatePosition();
                });
                this.interactableRotZ.onTriggerEnd.add(() => {
                    print("End");
                    for (let i = 0; i < this.mat.length; i++) {
                        this.mat[i].mainPass.isActive = 0;
                    }
                    for (let i = 0; i < this.matRot.length; i++) {
                        this.matRot[i].mainPass.isActive = 0;
                    }
                    this.updatePosition();
                });
            });
        }
        updatePosition() {
            let zeroPos = new vec3(0, 0, 0);
            let zeroRot = quat.fromEulerAngles(0, 0, 0);
            let newPos = this.object.getTransform().getWorldPosition();
            let newRot = this.object.getTransform().getWorldRotation();
            this.parent.getTransform().setWorldPosition(newPos);
            this.parent.getTransform().setWorldRotation(newRot);
            this.object.getTransform().setLocalPosition(zeroPos);
            this.object.getTransform().setLocalRotation(zeroRot);
        }
    };
    __setFunctionName(_classThis, "MoveAndRotateTool");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        MoveAndRotateTool = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return MoveAndRotateTool = _classThis;
})();
exports.MoveAndRotateTool = MoveAndRotateTool;
//# sourceMappingURL=MoveAndRotateTool_Local.js.map