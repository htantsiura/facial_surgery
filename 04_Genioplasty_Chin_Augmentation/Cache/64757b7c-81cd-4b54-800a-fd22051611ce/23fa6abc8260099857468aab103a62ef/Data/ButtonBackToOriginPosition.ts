@component
export class ButtonBackToOriginPosition extends BaseScriptComponent {

    private objectTrf: Transform;
    private _originPos: vec3; 
    private _currentPos: vec3; 
    private _originRot: quat;
    private _currentRot: quat;
    private onPosChangedCallbacks: ((newPos: vec3) => void)[] = [];
    private onRotChangedCallbacks: ((newRot: quat) => void)[] = [];
    private interaction: InteractionComponent;

    onAwake() {
        this.objectTrf = this.getSceneObject().getTransform();
        this._originPos = this.objectTrf.getLocalPosition();
        this._originRot = this.objectTrf.getLocalRotation();
        
        // Получаем компонент взаимодействия
        this.interaction = this.getSceneObject().getComponent("Component.InteractionComponent");

        if (this.interaction) {
            // Вариант Б: Проверить один раз, когда пользователь отпустил объект
            this.interaction.onTouchEnd.add(() => {
                this.currentPos = this.objectTrf.getLocalPosition();
            });
        }
    }

    public set currentPos(value: vec3) {
        if (this._currentPos && this._currentPos.equal(value)) {
            return; 
        }
        this._currentPos = value;
        if (this._originPos && !this._originPos.equal(value)) {
            print("Позиция отличается от стартовой!");
        }
    }

    public get currentPos(): vec3 {
        return this._currentPos;
    }
}
