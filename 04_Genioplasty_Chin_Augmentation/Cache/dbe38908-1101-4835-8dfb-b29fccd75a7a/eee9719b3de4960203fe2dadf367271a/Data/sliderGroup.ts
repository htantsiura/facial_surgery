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

@input
mandobula: SceneObject

private _teethStartPos: vec3
private _teethCurrentPos: vec3



    onAwake() {

        this._teethStartPos = this. 



        this.textX.text = "Position by X: "
        this.textY.text = "Position by Y: "
        this.textZ.text = "Position by Z: "

        this.createEvent("OnStartEvent").bind(() => {
            this.sliderX.onValueChange.add((value) => {
                print(value)
            })
            this.sliderY.onValueChange.add((value) => {
                print(value)
            })
            this.sliderZ.onValueChange.add((value) => {
                print(value)
            })
        })



    }
}
