
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



    /* onAwake() {

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
                let newPos = new vec3(this._teethCurrentPos.x + (value - 0.5) / 10, this._teethCurrentPos.y, this._teethCurrentPos.z )
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


    } */

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
                let newTeethPos = this.newPositionBySlider("x", value, this._teethStartPos, this._teethCurrentPos)
                teethTrf.setLocalPosition(newTeethPos)
                let newSkullPos = this.newPositionBySlider("x", value, this._skullMandStartPos, this._skullMandCurrentPos)
                skullMandibulaTrf.setLocalPosition(newSkullPos)
                this.textX.text = "Position by X: " + ((value - 0.5) / 10).toFixed(3)

            })
            this.sliderY.onValueChange.add((value) => {
                // let newPos = new vec3(this._teethCurrentPos.x, this._teethCurrentPos.y + (value - 0.5) / 10, this._teethCurrentPos.z )
                let newTeethPos = this.newPositionBySlider("y", value, this._teethStartPos, this._teethCurrentPos)
                teethTrf.setLocalPosition(newTeethPos)
                this.textY.text = "Position by Y: " + ((value - 0.5) / 500).toFixed(5)
            })
            this.sliderZ.onValueChange.add((value) => {
                // let newPos = new vec3(this._teethCurrentPos.x, this._teethCurrentPos.y, this._teethCurrentPos.z + (value - 0.5) / 10 )
                let newTeethPos = this.newPositionBySlider("z", value, this._teethStartPos, this._teethCurrentPos)
                teethTrf.setLocalPosition(newTeethPos)
                this.textZ.text = "Position by Z: " + ((value - 0.5) / 10).toFixed(3)

            })
        })


    }
    private newPositionBySlider(slider, value, startPos, currentPos): vec3 {
        let newPos = currentPos
        if(slider === "x") {
            newPos.x = startPos.x + (value - 0.5) / 10
            currentPos.x = newPos.x
            return newPos
        }
        if(slider === "y") {
            newPos.y = startPos.y + (value - 0.5) / 50
            currentPos.y = newPos.y
            return newPos
        }
        if(slider === "z") {
            newPos.z = startPos.z + (value - 0.5) / 10
            currentPos.z = newPos.z
            return newPos
        }
    }

    /* onAwake() {

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
                let newPosTeeth = this.newPositionBySlider("x", value, this._teethCurrentPos)
                teethTrf.setLocalPosition(newPosTeeth)
                this.textX.text = "Position by X: " + ((value - 0.5) / 10).toFixed(3)

            })
            this.sliderY.onValueChange.add((value) => {
                let newPosTeeth = this.newPositionBySlider("y", value, this._teethCurrentPos)
                teethTrf.setLocalPosition(newPosTeeth)
                this.textY.text = "Position by Y: " + ((value - 0.5) / 10).toFixed(5)
            })
            this.sliderZ.onValueChange.add((value) => {
                let newPosTeeth = this.newPositionBySlider("z", value, this._teethCurrentPos)
                teethTrf.setLocalPosition(newPosTeeth)
                this.textZ.text = "Position by Z: " + ((value - 0.5) / 10).toFixed(3)

            })
        })


    }

    private newPositionBySlider(slider, value, pos): vec3 {
        let newPos = new vec3(0, 0, 0)
        if(slider === "x") {
            newPos.x = pos.x + (value - 0.5) / 10
            return newPos
        }
        if(slider === "y") {
            newPos.y = pos.y + (value - 0.5) / 10
            return newPos
        }
        if(slider === "z") {
            newPos.z = pos.z + (value - 0.5) / 10
            return newPos
        }
        
    } */

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
