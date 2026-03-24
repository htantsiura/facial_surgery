import { Slider } from "SpectaclesUIKit.lspkg/Scripts/Components/Slider/Slider"

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

        // this.createEvent("UpdateEvent").bind(( ) => {
        //     let pinPos = new vec2(this.uCoord, this.vCoord)
        //     this.cameraRootPTM.pinUV = pinPos
        // })

        this.createEvent("OnStartEvent").bind(() => {
            this.cameraMoveSlider.onValueChange.add((value) => {
                // let newCoords = new vec2(value, 0)
                let newCoords = new vec2(value, 0)
                this.cameraRootPTM.pinUV = newCoords
                print(newCoords)

                

            })

        })

    }
}
