import { Slider } from "SpectaclesUIKit.lspkg/Scripts/Components/Slider/Slider"

@component
export class BoneScaling extends BaseScriptComponent {

    @input
    boneRoot: SceneObject

    @input
    moveSliderX: Slider

    @input
    moveSliderY: Slider

    @input
    moveSliderZ: Slider

    @input
    coef: number = 1

    private originPos: vec3
    private newPos: vec3

    onAwake() {

        this.originPos = this.boneRoot.getTransform().getLocalPosition();

        this.createEvent("OnStartEvent").bind(() => {
            this.newPos = new vec3(this.originPos.x, this.originPos.y, this.originPos.z)
            this.moveSliderX.onValueChange.add((value) => {
                // this.newPos.x = this.originPos.x + (value - 0.5 ) * this.coef
                this.newPos.x = this.originPos.x + MathUtils.remap(value, 0.5, 1, this.originPos.x, this.originPos.x + (value - 0.5 ) * this.coef)
                this.boneRoot.getTransform().setLocalPosition(this.newPos)
            })
            /* this.moveSliderY.onValueChange.add((value) => {
                this.newPos.y = this.originPos.y + (value - 0.5 ) * this.coef
                this.boneRoot.getTransform().setLocalPosition(this.newPos)
            })
            this.moveSliderZ.onValueChange.add((value) => {
                this.newPos.z = this.originPos.z + (value - 0.5 ) * this.coef
                this.boneRoot.getTransform().setLocalPosition(this.newPos)
            }) */

        })

    }
}
