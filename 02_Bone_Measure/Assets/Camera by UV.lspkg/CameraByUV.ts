import { Slider } from "SpectaclesUIKit.lspkg/Scripts/Components/Slider/Slider"
PinToMeshComponent

@component
export class NewScript extends BaseScriptComponent {

    @input
    cameraRootPTM: PinToMeshComponent

    @input
    cameraMoveSlider: Slider

    @input
    uCoord: number

    @input
    vCoord: number

    onAwake() {
        this.createEvent("OnStartEvent").bind(() => {
            let newCoords = new vec2(0.44, 0.5)
            this.cameraRootPTM.pinUV = newCoords
            this.cameraMoveSlider.onValueChange.add((value) => {
                // let newCoords = new vec2(value, 0)
                // let newCoords = new vec2(0, 0)
                newCoords.x = (value - 0.06 + 1) % 1;
                newCoords.y = 0.5;
                this.cameraRootPTM.pinUV = newCoords
            })
        })
    }
}
