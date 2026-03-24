import { Slider } from "SpectaclesUIKit.lspkg/Scripts/Components/Slider/Slider"

@component
export class BoneScaling extends BaseScriptComponent {

    @input
    boneRoot: SceneObject

    @input
    rotateSliderX: Slider

    @input
    rotateSliderY: Slider

    @input
    rotateSliderZ: Slider

    @input
    coef: number = 10

    private originRot: quat
    private newRot: quat

    onAwake() {

        this.originRot = this.boneRoot.getTransform().getLocalRotation();

        this.createEvent("OnStartEvent").bind(() => {
            this.newRot = new quat(this.originRot.x, this.originRot.y, this.originRot.z, this.originRot.w)
            this.rotateSliderX.onValueChange.add((value) => {
                this.newRot.x = this.originRot.x + (value - 0.5 ) * this.coef
                this.boneRoot.getTransform().setLocalRotation(this.newRot)
            })
            this.rotateSliderY.onValueChange.add((value) => {
                this.newRot.y = this.originRot.y + (value - 0.5 ) * this.coef
                this.boneRoot.getTransform().setLocalRotation(this.newRot)
            })
            this.rotateSliderZ.onValueChange.add((value) => {
                this.newRot.z = this.originRot.z + (value - 0.5 ) * this.coef
                this.boneRoot.getTransform().setLocalRotation(this.newRot)
            })

        })

    }
}
