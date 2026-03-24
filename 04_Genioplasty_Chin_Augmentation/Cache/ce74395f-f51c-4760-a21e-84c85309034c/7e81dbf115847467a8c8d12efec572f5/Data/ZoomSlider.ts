import { Slider } from "SpectaclesUIKit.lspkg/Scripts/Components/Slider/Slider"

@component
export class ZoomSlider extends BaseScriptComponent {

    @input
    plane: SceneObject

    @input
    projectionMat: Material

    @input
    zoomSlider: Slider


    onAwake() {
        


        this.createEvent("OnStartEvent").bind(() => {
            this.zoomSlider.onValueChange.add((value) => {

                let planeValue = (1 - value * 0.7) * 10
                let planeScale = new vec3(planeValue, planeValue, planeValue)
                this.plane.getTransform().setLocalScale(planeScale)

                this.projectionMat.mainPass.zoom = value


                

            })

        })

    }
}
