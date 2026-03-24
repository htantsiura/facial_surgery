import { Interactable } from "SpectaclesInteractionKit.lspkg/Components/Interaction/Interactable/Interactable";

@component
export class DebugScale extends BaseScriptComponent {

    @input
    object: SceneObject

    @input
    debugText: Text

    @input
    myInteractable: Interactable

    onAwake() {

        let objectTrf = this.object.getTransform()

        if (this.myInteractable) {
            if (this.myInteractable.onDragEnd) {
                this.myInteractable.onDragEnd.add(() => {
                    this.currentPos = this.objectTrf.getLocalPosition();
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
