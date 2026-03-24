import { Slider } from "SpectaclesUIKit.lspkg/Scripts/Components/Slider/Slider"



@component
export class sliderGroupextends extends BaseScriptComponent {

@input
sliderX: Slider

@input
sliderY: Slider

@input
sliderZ: Slider

@input
textX: Text

@input
textY: Text

@input
textZ: Text



    onAwake() {

        this.textX.text = "Position by X: "
        this.textY.text = "Position by Y: "
        this.textZ.text = "Position by Z: "

        this.createEvent("OnStartEvent").bind(() => {
            this.sliderX.onValueChange.add((value) => {
                print(value)
            })
        })



    }
}
