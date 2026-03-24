import { Slider } from "SpectaclesUIKit.lspkg/Scripts/Components/Slider/Slider";

@component
export class ResetChin extends BaseScriptComponent {

    @input
    sliders: Slider[]

    @input
    chin: SceneObject

    private zeroPosForChin: vec3


    onAwake() {
        this.zeroPosForChin = this.chin.getChild(0).getTransform().getLocalPosition()

    }

    private buttonResetChin(): void {
        let zeroPos = this.zeroPosForChin
        let zeroRot = quat.fromEulerAngles(0, 0, 0)

        this.chin.getTransform().setLocalRotation(zeroRot)
        this.chin.getChild(0).getTransform().setLocalPosition(zeroPos)  
        
        for (let i = 0; i < this.sliders.length; i++ ) {
            
        }
    }
}
