import { Slider } from "SpectaclesUIKit.lspkg/Scripts/Components/Slider/Slider"

@component
export class BoneScaling extends BaseScriptComponent {

    @input
    mat: Material

    @input
    scaleSliderX: Slider

    @input
    scaleSliderY: Slider

    @input
    scaleSliderZ: Slider

    private originScale: vec3
    private newScale: vec3

    onAwake() {

        

        this.createEvent("OnStartEvent").bind(() => {
            this.scaleSliderX.onValueChange.add((value) => {
                this.mat.mainPass.sliceX = MathUtils.remap(value, 0, 1, -1, 5)
            })
            this.scaleSliderY.onValueChange.add((value) => {
                this.mat.mainPass.sliceY = MathUtils.remap(value, 0, 1, 3, 12)
            })
            this.scaleSliderZ.onValueChange.add((value) => {
                this.mat.mainPass.sliceZ = MathUtils.remap(value, 0, 1, 3, 12)
            })

        })

    }
}
