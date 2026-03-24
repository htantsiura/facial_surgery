import { Slider } from "SpectaclesUIKit.lspkg/Scripts/Components/Slider/Slider"

@component
export class ZoomSlider extends BaseScriptComponent {

    @input
    plane: SceneObject

    @input
    projectionMat: Material

    @input
    zoomSlider: Slider

    
    onAwake() {

    }
}
