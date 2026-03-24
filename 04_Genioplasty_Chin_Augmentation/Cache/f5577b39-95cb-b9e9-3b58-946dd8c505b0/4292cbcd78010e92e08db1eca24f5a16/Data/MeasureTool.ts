import { Interactable } from "SpectaclesInteractionKit.lspkg/Components/Interaction/Interactable/Interactable"

Interactable

@component
export class NewScript extends BaseScriptComponent {


    @input
    marker0: SceneObject

    @input
    marker1: SceneObject

    @input
    text: Text

    @input
    object: SceneObject

    @input
    myInteractable: Interactable

    private objectTrf: Transform
    private scale: vec3

    onAwake() {

        let markerDefaultScale = new vec3(1, 1, 1)

        let marker0Trf = this.marker0.getTransform()
        let marker1Trf = this.marker1.getTransform()
        this.objectTrf = this.object.getTransform()
        this.scale = this.objectTrf.getLocalScale();

        i/* f (this.myInteractable) {
            if (this.myInteractable.onDragEnd) {
                this.myInteractable.onDragEnd.add(() => {
                    
                });
            }
        } else {
        

        } */

        this.createEvent("UpdateEvent").bind(( ) => {
            this.scale = this.objectTrf.getLocalScale();
            let pos0 = marker0Trf.getWorldPosition()
            let pos1 = marker1Trf.getWorldPosition()
            let distance = pos0.distance(pos1) / this.scale.x
            this.text.text = distance.toFixed(3)

            marker0Trf.setWorldScale(markerDefaultScale)
            marker1Trf.setWorldScale(markerDefaultScale)
        })

    }
}
