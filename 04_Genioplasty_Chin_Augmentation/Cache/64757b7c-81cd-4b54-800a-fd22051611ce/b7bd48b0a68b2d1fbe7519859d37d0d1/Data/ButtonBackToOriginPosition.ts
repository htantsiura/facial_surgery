import { Interactable } from "SpectaclesInteractionKit.lspkg/Components/Interaction/Interactable/Interactable";



@component
export class ButtonBackToOriginPosition extends BaseScriptComponent {

    @input
    buttonMoveToOrigin: SceneObject

    @input
    myInteractable: Interactable; 

    private objectTrf: Transform;
    private _originPos: vec3; 
    private _currentPos: vec3; 
    private _originRot: quat;
    private _currentRot: quat;
    private onPosChangedCallbacks: ((newPos: vec3) => void)[] = [];
    private onRotChangedCallbacks: ((newRot: quat) => void)[] = [];
    private interaction: InteractionComponent;
    private manipulate: ManipulateComponent;

    onAwake() {
        this.objectTrf = this.getSceneObject().getParent().getTransform();
        this._originPos = this.objectTrf.getLocalPosition();
        this._originRot = this.objectTrf.getLocalRotation();
        this.buttonMoveToOrigin.enabled = false;

        if (this.myInteractable) {
            
            // ВАРИАНТ А: Проверять позицию один раз, когда пользователь ОТПУСТИЛ объект
            if (this.myInteractable.onDragEnd) {
                this.myInteractable.onDragEnd.add(() => {
                    this.currentPos = this.objectTrf.getLocalPosition();
                    print(" INTERACTION ==")
                });
            }

            // ВАРИАНТ Б: Проверять позицию в реальном времени, ПОКА его тащат
            /* if (this.myInteractable.onDragUpdate) {
                this.myInteractable.onDragUpdate.add(() => {
                    this.currentPos = this.objectTrf.getLocalPosition();
                });
            } */
        } else {
            print("Скрипт Interactable не назначен в инспекторе!");
        }

/*         this.manipulate = this.getSceneObject().getComponent("Component.ManipulateComponent");
        if (this.manipulate) {
            
            // Сработает один раз, когда пользователь уберет палец
            this.manipulate.onManipulateEnd.add(() => {
                // Передаем новую позицию в ваш сеттер (который вызовет колбэки)
                this.currentPos = this.objectTrf.getLocalPosition();
                print("Manipulation")
            });
        } else {
            print("ManipulateComponent не найден!");
        } */
        
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

    public set currentPos(newPos: vec3) {
        if (this._currentPos && this._currentPos.equal(newPos)) {
            return; 
        }
        this._currentPos = newPos;
        if (this._originPos && !this._originPos.equal(newPos)) {
            this.buttonMoveToOrigin.enabled = true;
        }
    }

    public get currentPos(): vec3 {
        return this._currentPos;
    }

    private backToOrigin(): void {
        this.objectTrf.setLocalPosition(this._originPos)
        this.objectTrf.setLocalRotation(this._originRot)
        this.buttonMoveToOrigin.enabled = false;
    }

}
