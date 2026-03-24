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
    private _originScale: vec3;
    private _currentRot: quat;

    onAwake() {
        this.objectTrf = this.getSceneObject().getParent().getTransform();
        this._originPos = this.objectTrf.getLocalPosition();
        this._originRot = this.objectTrf.getLocalRotation();
        this._originScale = this.objectTrf.getLocalScale();

        this.buttonMoveToOrigin.enabled = false;

        if (this.myInteractable) {
            if (this.myInteractable.onDragEnd) {
                this.myInteractable.onDragEnd.add(() => {
                    this.currentPos = this.objectTrf.getLocalPosition();
                });
            }

            /* if (this.myInteractable.onDragUpdate) {
                this.myInteractable.onDragUpdate.add(() => {
                    this.currentPos = this.objectTrf.getLocalPosition();
                });
            } */
        } else {
            print("Скрипт Interactable не назначен в инспекторе!");
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
        this.objectTrf.setLocalScale(this._originScale)
        this.buttonMoveToOrigin.enabled = false;
    }

}
