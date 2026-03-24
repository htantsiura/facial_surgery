
import { LSTween } from "LSTween.lspkg/LSTween"
import Easing from "LSTween.lspkg/TweenJS/Easing"
import { Slider } from "SpectaclesUIKit.lspkg/Scripts/Components/Slider/Slider"




@component
export class mandibulaController extends BaseScriptComponent {

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

        let mandibuleTrf = this.mandobula.getTransform()

        this._teethStartPos = mandibuleTrf.getLocalPosition() 
        this._teethCurrentPos = mandibuleTrf.getLocalPosition() 

        this.textX.text = "Position by X: 0.0"
        this.textY.text = "Position by Y: 0.0"
        this.textZ.text = "Position by Z: 0.0"

        this.createEvent("OnStartEvent").bind(() => {
            this.sliderX.onValueChange.add((value) => {
                let newPos = new vec3(this._teethCurrentPos.x + (value - 0.5) / 10, this._teethCurrentPos.y, this._teethCurrentPos.z )
                mandibuleTrf.setLocalPosition(newPos)
                this.textX.text = "Position by X: " + ((value - 0.5) / 10).toFixed(3)

            })
            this.sliderY.onValueChange.add((value) => {
                let newPos = new vec3(this._teethCurrentPos.x, this._teethCurrentPos.y + (value - 0.5) / 10, this._teethCurrentPos.z )
                mandibuleTrf.setLocalPosition(newPos)
                this.textY.text = "Position by Y: " + ((value - 0.5) / 500).toFixed(5)
            })
            this.sliderZ.onValueChange.add((value) => {
                let newPos = new vec3(this._teethCurrentPos.x, this._teethCurrentPos.y, this._teethCurrentPos.z + (value - 0.5) / 10 )
                mandibuleTrf.setLocalPosition(newPos)
                this.textZ.text = "Position by Z: " + ((value - 0.5) / 10).toFixed(3)

            })
        })


    }

    private defaultPosition(): void {
        // this.sliderX.currentValue = 0.5
        this.sliderX.updateCurrentValue(0.5, true)
        this.sliderY.updateCurrentValue(0.5, true)
        this.sliderZ.updateCurrentValue(0.5, true) 

        let transf = this.mandobula.getTransform();
        this.tweenFunc(transf, this._teethStartPos, 1000)          
    }

    private tweenFunc(transform, pos, t): void {
        LSTween.moveToLocal(
            transform,
            pos,
            t
        )
        .easing(Easing.Quadratic.Out) 
        .start()
    }
}
