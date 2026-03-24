import { Interactable } from "SpectaclesInteractionKit.lspkg/Components/Interaction/Interactable/Interactable"
import { InteractableManipulation } from "SpectaclesInteractionKit.lspkg/Components/Interaction/InteractableManipulation/InteractableManipulation"

@component
export class CutToolController extends BaseScriptComponent {

    @input
    tool: SceneObject

    @input
    toolMat: Material

    @input
    toolUI: SceneObject

    @input
    buttonText: Text

    @input
    parentInteractable: Interactable

    @input
    parentManipulation: InteractableManipulation

    @input
    iconLock: SceneObject

    private flag_toolIsActive: boolean = false
    private flag_toolIsOn: boolean = false


    onAwake() {

        this.flag_toolIsActive = false
        this.flag_toolIsOn = false
        this.iconLock.enabled = false

        this.createEvent("OnStartEvent").bind(() => {
            this.deactivateCutTool()
        })
    }

    private deactivateCutTool(): void {
        this.toolMat.mainPass.isActive = 0
        this.buttonText.text = "Activate"
        this.parentInteractable.enabled = true
        this.parentManipulation.enabled = true
        this.iconLock.enabled = false
        this.flag_toolIsActive = false
        

    }

    private activateCutTool(): void {
        this.toolMat.mainPass.isActive = 1
        this.buttonText.text = "Deactivate"
        this.parentInteractable.enabled = false
        this.parentManipulation.enabled = false
        this.iconLock.enabled = true
        this.flag_toolIsActive = true
    }

    private buttonActivateDeactivate(): void {
        if (!this.flag_toolIsActive) {
            this.activateCutTool()
        } else {
            this.deactivateCutTool()
        }
    }

    private resetCutTool(): void {
        
    }

    private blockInteractableParent(): void {

    }

    private buttonCutTool(): void {
        if(!this.flag_toolIsOn) {
            this.tool.enabled = true
            this.activateCutTool()
            this.toolUI.enabled = true
            this.flag_toolIsOn = true
        } else {
            this.tool.enabled = false
            this.deactivateCutTool()
            this.toolUI.enabled = false
            this.flag_toolIsOn = false
        }
    }

   

}
