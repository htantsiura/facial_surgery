@component
export class ButtonBackToOriginPosition extends BaseScriptComponent {

    private objectTrf
    private originPos: vec3
    private originRot: quat


    onAwake() {


        this.objectTrf = this.getSceneObject().getTransform()
        this.originPos = this.objectTrf.getLocalPosition()
        print(this.originPos)



    }

}
