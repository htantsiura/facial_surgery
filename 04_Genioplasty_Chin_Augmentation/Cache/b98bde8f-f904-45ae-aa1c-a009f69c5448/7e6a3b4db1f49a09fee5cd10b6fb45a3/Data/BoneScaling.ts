import { Slider } from "SpectaclesUIKit.lspkg/Scripts/Components/Slider/Slider"

@component
export class BoneScaling extends BaseScriptComponent {

    @input
    boneRoot: SceneObject

    @input
    scaleSlider: Slider

    onAwake() {

        this.createEvent("OnStartEvent").bind(() => {

        })

    }
}
