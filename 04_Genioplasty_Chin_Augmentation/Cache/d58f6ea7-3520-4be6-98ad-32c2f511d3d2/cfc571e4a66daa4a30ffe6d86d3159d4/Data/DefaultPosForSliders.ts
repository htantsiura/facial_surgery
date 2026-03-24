import { LSTween } from "LSTween.lspkg/LSTween"
import Easing from "LSTween.lspkg/TweenJS/Easing"
import { Slider } from "SpectaclesUIKit.lspkg/Scripts/Components/Slider/Slider"

@component
export class DefaultPosForSlider extends BaseScriptComponent {

    @input
    sliderX: Slider
    
    @input
    sliderY: Slider
    
    @input
    sliderZ: Slider
    
    @input
    mandobula: SceneObject
    
    @input
    skullMandibula: SceneObject
    
    private _teethStartPos: vec3
    private _skullMandStartPos: vec3

    onAwake() {
        
    }

    private defaultPosition(): void {
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
