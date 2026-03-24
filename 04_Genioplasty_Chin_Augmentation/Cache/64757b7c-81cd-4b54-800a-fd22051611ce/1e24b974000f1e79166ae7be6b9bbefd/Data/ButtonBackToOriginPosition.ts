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
        
        this.currentPos = this.objectTrf.getLocalPosition();
    }

    public addOnOriginPosChangedCallback(callback: (newPos: vec3) => void) {
        this.onPosChangedCallbacks.push(callback);
    }

    public set currentPos(value: vec3) {
        if (this._currentPos && this._currentPos.equal(value)) {
            print("THE SAME")
            return; 
        }

        this._currentPos = value;
        if (this._originPos && !this._originPos.equal(value)) {
            print("Позиция отличается от стартовой!");
            
            for (let i = 0; i < this.onPosChangedCallbacks.length; i++) {
                this.onPosChangedCallbacks[i](value);
            }
        }
    }

    public get currentPos(): vec3 {
        return this._currentPos;
    }
}
