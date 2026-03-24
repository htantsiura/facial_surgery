import { Slider } from "SpectaclesUIKit.lspkg/Scripts/Components/Slider/Slider"

@component
export class ZoomSlider extends BaseScriptComponent {

    @input
    camera: SceneObject

    @input
    zoomSlider: Slider

    onAwake() {
        this.createEvent("OnStartEvent").bind(() => {
            this.zoomSlider.onValueChange.add((value) => {
                let depth = value / 5 + 0.01
                let scale = new vec3(1, 1, depth)
                this.camera.getTransform().setLocalScale(scale)
            })
        })
    }
}
