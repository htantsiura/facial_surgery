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
    coef: number

    private originRot: quat
    private newRot: quat

    onAwake() {

        this.originRot = this.boneRoot.getTransform().getLocalRotation();
        let deltaQuat = quat.fromEulerAngles(0, 0, 0)

        this.createEvent("OnStartEvent").bind(() => {
            this.newRot = new quat(this.originRot.x, this.originRot.y, this.originRot.z, this.originRot.w)
            this.rotateSliderX.onValueChange.add((value) => {
                deltaQuat = quat.fromEulerAngles(value * this.coef, 0, 0)
                print("ROTATING X")
            })
            this.rotateSliderY.onValueChange.add((value) => {
                deltaQuat = quat.fromEulerAngles(0, value * this.coef, 0)
            })
            this.rotateSliderZ.onValueChange.add((value) => {
                deltaQuat = quat.fromEulerAngles(0, 0, value * this.coef)
            })
            this.newRot = this.originRot.multiply(deltaQuat)
            this.boneRoot.getTransform().setLocalRotation(this.newRot)

        })

    }
}
