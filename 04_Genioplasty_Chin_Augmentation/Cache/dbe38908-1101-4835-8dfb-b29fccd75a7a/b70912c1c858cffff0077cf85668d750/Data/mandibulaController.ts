
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

@input
skullMandibula: SceneObject

private _teethStartPos: vec3
private _teethCurrentPos: vec3
private _skullMandStartPos: vec3
private _skullMandCurrentPos: vec3



    onAwake() {

        let teethTrf = this.mandobula.getTransform()
        let skullMandibulaTrf = this.skullMandibula.getTransform()

        this._teethStartPos = teethTrf.getLocalPosition() 
        this._teethCurrentPos = teethTrf.getLocalPosition() 
        this._skullMandStartPos = skullMandibulaTrf.getLocalPosition() 
        this._skullMandCurrentPos = skullMandibulaTrf.getLocalPosition() 

        this.textX.text = "Position by X: 0.0"
        this.textY.text = "Position by Y: 0.0"
        this.textZ.text = "Position by Z: 0.0"

        this.createEvent("OnStartEvent").bind(() => {
            this.sliderX.onValueChange.add((value) => {
                let coef = 10;
                let newPosTeeth = this.newPositionBySlider(value, this._teethCurrentPos, coef)
                // let newPos = new vec3(0, 0, 0)
                // newPos.x = this._teethCurrentPos.x + (value - 0.5) / 10
                // newPos.y = this._teethCurrentPos.y
                // newPos.z = this._teethCurrentPos.z 
                teethTrf.setLocalPosition(newPos)
                this.textX.text = "Position by X: " + ((value - 0.5) / 10).toFixed(3)

            })
            this.sliderY.onValueChange.add((value) => {
                let newPos = new vec3(this._teethCurrentPos.x, this._teethCurrentPos.y + (value - 0.5) / 10, this._teethCurrentPos.z )
                teethTrf.setLocalPosition(newPos)
                this.textY.text = "Position by Y: " + ((value - 0.5) / 500).toFixed(5)
            })
            this.sliderZ.onValueChange.add((value) => {
                let newPos = new vec3(this._teethCurrentPos.x, this._teethCurrentPos.y, this._teethCurrentPos.z + (value - 0.5) / 10 )
                teethTrf.setLocalPosition(newPos)
                this.textZ.text = "Position by Z: " + ((value - 0.5) / 10).toFixed(3)

            })
        })


    }

    private newPositionBySlider(value, pos, coef): vec3 {
        let newPos = new vec3(0, 0, 0)
        newPos.x = pos.x + (value - 0.5) / coef
        newPos.y = pos.y
        newPos.z = pos.z 
        return newPos
    }

    private defaultPosition(): void {
        // this.sliderX.currentValue = 0.5
        this.sliderX.updateCurrentValue(0.5, true)
        this.sliderY.updateCurrentValue(0.5, true)
        this.sliderZ.updateCurrentValue(0.5, true) 

        let transf1 = this.mandobula.getTransform();
        let transf2 = this.skullMandibula.getTransform();
        this.tweenFunc(transf1, this._teethStartPos, 500)
        this.tweenFunc(transf2, this._skullMandStartPos, 500)            
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
