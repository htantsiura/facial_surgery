import { Interactable } from "SpectaclesInteractionKit.lspkg/Components/Interaction/Interactable/Interactable";

@component
export class MoveAndRotateTool extends BaseScriptComponent {

    @input
    interactable: Interactable

    @input
    interactableRotX: Interactable

    @input
    interactableRotY: Interactable

    @input
    interactableRotZ: Interactable

    @input
    object: SceneObject

    @input
    parent: SceneObject

    @input
    speedCoef: number

    @input
    mat: Material[]

    @input
    matRot: Material[]

    private index: number
    private indexRot: number

    onAwake() {

        this.speedCoef = this.speedCoef / 100
        if (!this.interactable) {
            print("Добавь Interactable в скрипт!");
            return;
        }

        this.createEvent("OnStartEvent").bind(() => {

            this.interactable.onTriggerUpdate.add((event: any) => {

                const hitInfo = event.interactor.targetHitInfo;
                if (!hitInfo || !hitInfo.hit) return;
                const hitNormal = hitInfo.hit.normal;
                
                const transform = this.sceneObject.getTransform();
                const right = transform.right;     // Локальная ось X (Вправо)
                const up = transform.up;           // Локальная ось Y (Вверх)
                const forward = transform.forward; // Локальная ось Z (Вперед)

                // Сравниваем нормаль с осями объекта. 
                // Скалярное произведение (Dot Product) равно 1, если направления идеально совпадают.
                // Берем порог 0.5 на случай, если нажатие пошло немного по касательной.
                const threshold = 0.5; 
                let objPos = this.object.getTransform().getLocalPosition()
                let newPos = new vec3(objPos.x, objPos.y, objPos.z)

                if (hitNormal.dot(right) < -threshold) {
                    print("👉");
                    newPos = new vec3(objPos.x + this.speedCoef, objPos.y, objPos.z)
                    this.index = 0
                } else if (hitNormal.dot(right) > threshold) {
                    print("👈");
                    newPos = new vec3(objPos.x - this.speedCoef, objPos.y, objPos.z)
                    this.index = 1
                } else if (hitNormal.dot(up) < -threshold) {
                    print("👆");
                    newPos = new vec3(objPos.x, objPos.y + this.speedCoef, objPos.z)
                    this.index = 2
                } else if (hitNormal.dot(up) > threshold) {
                    print("👇");
                    newPos = new vec3(objPos.x, objPos.y - this.speedCoef, objPos.z)
                    this.index = 3
                } else if (hitNormal.dot(forward) < -threshold) {
                    print("🖐");
                    newPos = new vec3(objPos.x, objPos.y, objPos.z + this.speedCoef)
                    this.index = 4
                } else if (hitNormal.dot(forward) > threshold) {
                    print("🤚");
                    newPos = new vec3(objPos.x, objPos.y, objPos.z - this.speedCoef)
                    this.index = 5
                }
                this.object.getTransform().setLocalPosition(newPos)
                this.mat[this.index].mainPass.isActive = 1
            });

            this.interactable.onTriggerEndOutside.add(() => {
                print("End")
                for(let i = 0; i < this.mat.length; i++) {
                    this.mat[i].mainPass.isActive = 0
                }
                this.updatePosition()
            })
            this.interactable.onTriggerEnd.add(() => {
                print("End")
                for(let i = 0; i < this.mat.length; i++) {
                    this.mat[i].mainPass.isActive = 0
                }
                this.updatePosition()
            })

            this.interactableRotX.onTriggerUpdate.add((event: any) => {

                const hitInfo = event.interactor.targetHitInfo;
                if (!hitInfo || !hitInfo.hit) return;
                const hitNormal = hitInfo.hit.normal;
                
                const transform = this.sceneObject.getTransform();
                const right = transform.right;     // Локальная ось X (Вправо)
                const up = transform.up;           // Локальная ось Y (Вверх)
                const forward = transform.forward; // Локальная ось Z (Вперед)

                // Сравниваем нормаль с осями объекта. 
                // Скалярное произведение (Dot Product) равно 1, если направления идеально совпадают.
                // Берем порог 0.5 на случай, если нажатие пошло немного по касательной.
                const threshold = 0.0; 
                let objRot = this.object.getTransform().getLocalRotation()
                let newRot = new quat(objRot.x, objRot.y, objRot.z, objRot.w)
                let deltaRot = quat.fromEulerAngles(this.speedCoef / 5, 0, 0)

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
                    newRot = objRot.multiply(deltaRot)
                    this.index = 0
                    this.indexRot = 0
                } else if (hitNormal.dot(forward) > threshold) {
                    print("🤚");
                    newRot = objRot.multiply(deltaRot.invert())
                    this.index = 0
                    this.indexRot = 0
                }
                this.object.getTransform().setLocalRotation(newRot)
                this.mat[this.index].mainPass.isActive = 1
                this.matRot[this.indexRot].mainPass.isActive = 1
            });

            this.interactableRotX.onTriggerEndOutside.add(() => {
                print("End")
                for(let i = 0; i < this.mat.length; i++) {
                    this.mat[i].mainPass.isActive = 0
                }
                for(let i = 0; i < this.matRot.length; i++) {
                    this.matRot[i].mainPass.isActive = 0
                }
                this.updatePosition()
            })
            this.interactableRotX.onTriggerEnd.add(() => {
                print("End")
                for(let i = 0; i < this.mat.length; i++) {
                    this.mat[i].mainPass.isActive = 0
                }
                for(let i = 0; i < this.matRot.length; i++) {
                    this.matRot[i].mainPass.isActive = 0
                }
                this.updatePosition()
            })


            this.interactableRotY.onTriggerUpdate.add((event: any) => {

                const hitInfo = event.interactor.targetHitInfo;
                if (!hitInfo || !hitInfo.hit) return;
                const hitNormal = hitInfo.hit.normal;
                
                const transform = this.sceneObject.getTransform();
                const right = transform.right;     // Локальная ось X (Вправо)
                const up = transform.up;           // Локальная ось Y (Вверх)
                const forward = transform.forward; // Локальная ось Z (Вперед)

                // Сравниваем нормаль с осями объекта. 
                // Скалярное произведение (Dot Product) равно 1, если направления идеально совпадают.
                // Берем порог 0.5 на случай, если нажатие пошло немного по касательной.
                const threshold = 0.00; 
                let objRot = this.object.getTransform().getLocalRotation()
                let newRot = new quat(objRot.x, objRot.y, objRot.z, objRot.w)
                let deltaRot = quat.fromEulerAngles(0, this.speedCoef / 5, 0)

                if (hitNormal.dot(right) < -threshold) {
                    print("👉");
                    newRot = objRot.multiply(deltaRot)
                    this.index = 2
                    this.indexRot = 1
                } else if (hitNormal.dot(right) > threshold) {
                    print("👈");
                    newRot = objRot.multiply(deltaRot.invert())
                    this.index = 2
                    this.indexRot = 1
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
                this.object.getTransform().setLocalRotation(newRot)
                this.mat[this.index].mainPass.isActive = 1
                this.matRot[this.indexRot].mainPass.isActive = 1
            });

            this.interactableRotY.onTriggerEndOutside.add(() => {
                print("End")
                for(let i = 0; i < this.mat.length; i++) {
                    this.mat[i].mainPass.isActive = 0
                }
                for(let i = 0; i < this.matRot.length; i++) {
                    this.matRot[i].mainPass.isActive = 0
                }
                this.updatePosition()
            })
            this.interactableRotY.onTriggerEnd.add(() => {
                print("End")
                for(let i = 0; i < this.mat.length; i++) {
                    this.mat[i].mainPass.isActive = 0
                }
                for(let i = 0; i < this.matRot.length; i++) {
                    this.matRot[i].mainPass.isActive = 0
                }
                this.updatePosition()
            })


            this.interactableRotZ.onTriggerUpdate.add((event: any) => {

                const hitInfo = event.interactor.targetHitInfo;
                if (!hitInfo || !hitInfo.hit) return;
                const hitNormal = hitInfo.hit.normal;
                
                const transform = this.sceneObject.getTransform();
                const right = transform.right;     // Локальная ось X (Вправо)
                const up = transform.up;           // Локальная ось Y (Вверх)
                const forward = transform.forward; // Локальная ось Z (Вперед)

                // Сравниваем нормаль с осями объекта. 
                // Скалярное произведение (Dot Product) равно 1, если направления идеально совпадают.
                // Берем порог 0.5 на случай, если нажатие пошло немного по касательной.
                const threshold = 0.00; 
                let objRot = this.object.getTransform().getLocalRotation()
                let newRot = new quat(objRot.x, objRot.y, objRot.z, objRot.w)
                let deltaRot = quat.fromEulerAngles(0, 0, this.speedCoef / 5)

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
                } else  */if (hitNormal.dot(up) < -threshold) {
                    print("👆");
                    newRot = objRot.multiply(deltaRot)
                    this.index = 4
                    this.indexRot = 2
                } else if (hitNormal.dot(up) > threshold) {
                    print("👇");
                    newRot = objRot.multiply(deltaRot.invert())
                    this.index = 4
                    this.indexRot = 2
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
                this.object.getTransform().setLocalRotation(newRot)
                this.mat[this.index].mainPass.isActive = 1
                this.matRot[this.indexRot].mainPass.isActive = 1
            });

            this.interactableRotZ.onTriggerEndOutside.add(() => {
                print("End")
                for(let i = 0; i < this.mat.length; i++) {
                    this.mat[i].mainPass.isActive = 0
                }
                for(let i = 0; i < this.matRot.length; i++) {
                    this.matRot[i].mainPass.isActive = 0
                }
                this.updatePosition()
            })
            this.interactableRotZ.onTriggerEnd.add(() => {
                print("End")
                for(let i = 0; i < this.mat.length; i++) {
                    this.mat[i].mainPass.isActive = 0
                }
                for(let i = 0; i < this.matRot.length; i++) {
                    this.matRot[i].mainPass.isActive = 0
                }
                this.updatePosition()
            })
        })
    }

    private updatePosition(): void {
        let zeroPos = new vec3(0, 0, 0)
        let zeroRot = quat.fromEulerAngles(0, 0, 0)
        let newPos = this.object.getTransform().getWorldPosition()
        let newRot = this.object.getTransform().getWorldRotation()

        this.parent.getTransform().setWorldPosition(newPos)
        this.parent.getTransform().setWorldRotation(newRot)
        this.object.getTransform().setLocalPosition(zeroPos)
        this.object.getTransform().setLocalRotation(zeroRot)
    }
}
