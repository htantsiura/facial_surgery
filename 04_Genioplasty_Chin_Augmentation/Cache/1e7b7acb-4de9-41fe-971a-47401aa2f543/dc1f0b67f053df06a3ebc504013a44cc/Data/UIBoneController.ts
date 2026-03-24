import { Interactable } from "SpectaclesInteractionKit.lspkg/Components/Interaction/Interactable/Interactable";

Interactable

@component
export class UIBoneController extends BaseScriptComponent {

    @input
    uiBoneController: SceneObject

    @input
    myInteractable: Interactable; 

    private flag_uiEnabled: boolean = false;

    onAwake() {

        this.uiBoneController.enabled = false

         if (this.myInteractable) {
            if (this.myInteractable.onDragEnd) {
                this.myInteractable.onDragEnd.add(() => {
                    this.enableUI();
                });
            }
        } else {
            print("No script");
        }

    }

    private enableUI(): void {
        if(!this.flag_uiEnabled) {
            this.uiBoneController.enabled = true;
            this.flag_uiEnabled = true
        }
    }

    private disableUI(): void {
        if(this.flag_uiEnabled) {
            this.uiBoneController.enabled = false
            this.flag_uiEnabled = false
        }
    }


}
