import { Interactable } from "SpectaclesInteractionKit.lspkg/Components/Interaction/Interactable/Interactable"
import { InteractableManipulation } from "SpectaclesInteractionKit.lspkg/Components/Interaction/InteractableManipulation/InteractableManipulation"

@component
export class CutToolController extends BaseScriptComponent {

    @input
    tool: SceneObject

    @input
    toolUI: SceneObject

    @input
    parentInteractable: Interactable

    @input
    parentManipulation: InteractableManipulation

    private flag_toolIsActive: boolean = false


    onAwake() {

        this.createEvent("OnStartEvent").bind(() => {
            this.deactivateCutTool()
        })
    }

    private deactivateCutTool(): void {
        this.tool.enabled = false
    }

    private activateCutTool(): void {
        this.tool.enabled = true
    }

    private buttonActivateDeactivate(): void {
        if (!this.tool.enabled) {
            this.tool.enabled = true;
        } else {
            this.tool.enabled = false;
        }
    }

    private resetCutTool(): void {
        
    }

    private blockInteractableParent(): void {

    }

    private buttonCutTool(): void {
        if(!this.flag_toolIsActive) {
            this.tool.enabled = true
            this.toolUI.enabled = true

            this.flag_toolIsActive = true
        } else {
            this.tool.enabled = false
            this.toolUI.enabled = false

            this.flag_toolIsActive = false
        }
    }

   

}
