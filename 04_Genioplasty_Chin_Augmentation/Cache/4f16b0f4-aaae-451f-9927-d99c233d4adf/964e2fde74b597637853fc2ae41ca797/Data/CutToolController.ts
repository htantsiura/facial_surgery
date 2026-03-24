import { Interactable } from "SpectaclesInteractionKit.lspkg/Components/Interaction/Interactable/Interactable"
import { InteractableManipulation } from "SpectaclesInteractionKit.lspkg/Components/Interaction/InteractableManipulation/InteractableManipulation"

@component
export class CutToolController extends BaseScriptComponent {

    @input
    toolObject: SceneObject

    @input
    toolUI: SceneObject

    @input
    parentInteractable: Interactable

    @input
    parentManipulation: InteractableManipulation


    onAwake() {

        this.createEvent("OnStartEvent").bind(() => {

        })
    }

    private deactivateCutTool(): void {
        this.toolObject.enabled = false
    }

    private activateCutTool(): void {
        this.toolObject.enabled = true
    }

    private resetCutTool(): void {
        
    }

    private blockInteractableParent(): void {

    }

    private buttonCutTool(): void {
        if(!this.toolObject) {
            this.toolObject.enabled = true
        } else {
            this.toolObject.enabled = false
        }
    }

   

}
