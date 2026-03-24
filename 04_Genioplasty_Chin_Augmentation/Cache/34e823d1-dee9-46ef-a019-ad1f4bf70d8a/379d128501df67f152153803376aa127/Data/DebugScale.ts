import { Interactable } from "SpectaclesInteractionKit.lspkg/Components/Interaction/Interactable/Interactable";

@component
export class DebugScale extends BaseScriptComponent {

    @input
    object: SceneObject

    @input
    debugText: Text

    @input
    myInteractable: Interactable

    private objectTrf: Transform
    private scale: vec3

    onAwake() {

        this.objectTrf = this.object.getTransform()

        if (this.myInteractable) {
            if (this.myInteractable.onDragEnd) {
                this.myInteractable.onDragEnd.add(() => {
                    this.scale = this.objectTrf.getLocalScale();
                    this.debugText.text = this.scale.toString()
                });
            }

            /* if (this.myInteractable.onDragUpdate) {
                this.myInteractable.onDragUpdate.add(() => {
                    this.currentPos = this.objectTrf.getLocalPosition();
                });
            } */
        } else {
            print("Скрипт Interactable не назначен в инспекторе!");
        }

    }
}
