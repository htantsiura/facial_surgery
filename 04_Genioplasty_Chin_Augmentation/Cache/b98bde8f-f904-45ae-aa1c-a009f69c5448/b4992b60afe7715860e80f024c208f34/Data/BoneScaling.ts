import { Slider } from "SpectaclesUIKit.lspkg/Scripts/Components/Slider/Slider"

@component
export class BoneScaling extends BaseScriptComponent {

    @input
    boneRoot: SceneObject

    @input
    scaleSlider: Slider

    private originScale: vec3
    private newScale: vec3

    onAwake() {

        this.originScale = this.boneRoot.getTransform().getLocalScale();

        this.createEvent("OnStartEvent").bind(() => {
            this.scaleSlider.onValueChange.add((value) => {
                this.newScale = new vec3(this.originScale.x, this.originScale.y, this.originScale.z)

                

            })

        })

    }
}
