@component
export class ButtonBackToOriginPosition extends BaseScriptComponent {

    private object
    private originPos: vec3
    private originRot: quat


    onAwake() {


        this.object = this.getSceneObject()
        this.originPos = this.object.getTransform().getWorldPosition()
        print(this.originPos)



    }

}
