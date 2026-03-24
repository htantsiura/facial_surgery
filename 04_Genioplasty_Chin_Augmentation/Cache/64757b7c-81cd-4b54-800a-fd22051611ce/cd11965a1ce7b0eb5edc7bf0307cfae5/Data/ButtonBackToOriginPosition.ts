


@component
export class ButtonBackToOriginPosition extends BaseScriptComponent {

    @input
    buttonMoveToOrigin: SceneObject

    private objectTrf: Transform;
    private _originPos: vec3; 
    private _currentPos: vec3; 
    private _originRot: quat;
    private _currentRot: quat;
    private onPosChangedCallbacks: ((newPos: vec3) => void)[] = [];
    private onRotChangedCallbacks: ((newRot: quat) => void)[] = [];
    private interaction: InteractionComponent;

    onAwake() {
        this.objectTrf = this.getSceneObject().getParent().getTransform();
        this._originPos = this.objectTrf.getLocalPosition();
        this._originRot = this.objectTrf.getLocalRotation();
        // this.buttonMoveToOrigin.enabled = false;
        
        this.interaction = this.getSceneObject().getComponent("Component.InteractionComponent");
        if (this.interaction) {
            this.interaction.onTouchEnd.add(() => {
                this.currentPos = this.objectTrf.getLocalPosition();
            });
        }
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
