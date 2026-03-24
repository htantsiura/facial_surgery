@component
export class NewScript extends BaseScriptComponent {

    @input
    boneRoot: SceneObject

    private originPos: vec3
    private originRot: quat
    private originScale: vec3

    onAwake() {
        this.originPos = this.boneRoot.getTransform().getLocalPosition()
        this.originRot = this.boneRoot.getTransform().getLocalRotation()
        this.originScale = this.boneRoot.getTransform().getLocalScale()
    }

    private buttonToOrigin(): void {
        this.boneRoot.getTransform().setLocalPosition(this.originPos)
        this.boneRoot.getTransform().setLocalRotation(this.originRot)
        this.boneRoot.getTransform().setLocalScale(this.originScale)
    }
}
