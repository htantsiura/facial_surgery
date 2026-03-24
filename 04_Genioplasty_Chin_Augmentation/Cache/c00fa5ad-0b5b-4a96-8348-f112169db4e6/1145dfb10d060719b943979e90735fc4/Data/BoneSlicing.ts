import { Slider } from "SpectaclesUIKit.lspkg/Scripts/Components/Slider/Slider"

@component
export class BoneScaling extends BaseScriptComponent {

    @input
    mat: Material

    @input
    scaleSlider: Slider

    private originScale: vec3
    private newScale: vec3

    onAwake() {

        

        this.createEvent("OnStartEvent").bind(() => {
            this.scaleSlider.onValueChange.add((value) => {

                this.mat.mainPass.sliceZ = value * 6 + 6

                

            })

        })

    }
}
