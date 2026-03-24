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

        let marker0Trf = this.marker0.getTransform()
        let marker1Trf = this.marker1.getTransform()
        this.objectTrf = this.object.getTransform()

        this.createEvent("UpdateEvent").bind(( ) => {

            let pos0 = marker0Trf.getWorldPosition()
            let pos1 = marker1Trf.getWorldPosition()

            print(pos0)
            print(" ---- " + pos1)

            let distance = pos0.distance(pos1)
            this.text.text = distance.toFixed(3)

        })

        if (this.myInteractable) {
            if (this.myInteractable.onDragEnd) {
                this.myInteractable.onDragEnd.add(() => {
                    this.scale = this.objectTrf.getLocalScale();
                    this.debugText.text = this.scale.x.toString()
                });
            }
        } else {

        }

    }
}
