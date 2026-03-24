import { Slider } from "SpectaclesUIKit.lspkg/Scripts/Components/Slider/Slider"



@component
export class sliderGroupextends extends BaseScriptComponent {

@input
sliderX: Slider

@input
sliderY: Slider

@input
sliderZ: Slider

    onAwake() {

        this.createEvent("OnStartEvent").bind(() => {
            this.sliderX.onValueChange.add((value) => {
                print(value)
            })
        })



    }
}
