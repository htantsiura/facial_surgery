import { Slider } from "SpectaclesUIKit.lspkg/Scripts/Components/Slider/Slider"

@component
export class BoneScaling extends BaseScriptComponent {

    @input
    boneRoot: SceneObject

    @input
    scaleSlider: Slider

    @input
    coef: number = 1

    private originPos: vec3
    private newPos: vec3

    onAwake() {

        this.originPos = this.boneRoot.getTransform().getLocalPosition();

        this.createEvent("OnStartEvent").bind(() => {
            this.scaleSlider.onValueChange.add((value) => {
                this.newPos = new vec3(this.originPos.x, this.originPos.y, this.originPos.z)
                this.newPos.x = this.originPos.x + (value - 0.5 ) * this.coef
                this.newPos.y = this.originPos.x + value * this.coef
                this.newPos.z = this.originPos.x + value * this.coef

                this.boneRoot.getTransform().setLocalPosition(this.newPos)

            })

        })

    }
}
