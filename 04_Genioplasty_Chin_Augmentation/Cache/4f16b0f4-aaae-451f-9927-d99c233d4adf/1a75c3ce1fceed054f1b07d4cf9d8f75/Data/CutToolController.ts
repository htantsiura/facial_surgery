import { Interactable } from "SpectaclesInteractionKit.lspkg/Components/Interaction/Interactable/Interactable"
import { InteractableManipulation } from "SpectaclesInteractionKit.lspkg/Components/Interaction/InteractableManipulation/InteractableManipulation"
import { PlaneBuilder } from "./PlaneBuilder"

@component
export class CutToolController extends BaseScriptComponent {

    @input
    tool: SceneObject

    @input
    toolUI: SceneObject

    @input
    chinPosUI: SceneObject

    @input
    buttonText: Text

    @input
    iconLock: SceneObject

    @input
    planeBuilderScript: PlaneBuilder

    private _flag_toolIsActive: boolean = false
    private flag_toolIsOn: boolean = false

    // private _isToolActive: boolean = false;
    private onStateChangedCallbacks: ((isActive: boolean) => void)[] = [];


    onAwake() {

        this._flag_toolIsActive = false
        this.flag_toolIsOn = false
        this.iconLock.enabled = false

        this.createEvent("OnStartEvent").bind(() => {
            this.deactivateCutTool()
        })
    }

    private deactivateCutTool(): void {
        this.buttonText.text = "Activate"
        this.iconLock.enabled = false
        this.isToolActive = false
    }

    private activateCutTool(): void {
        this.buttonText.text = "Deactivate"
        this.iconLock.enabled = true
        this.isToolActive = true
    }

    private buttonActivateDeactivate(): void {
        if (!this._flag_toolIsActive) {
            this.activateCutTool()
        } else {
            this.deactivateCutTool()
        }
    }

    private buttonNext(): void {
        this.chinPosUI.enabled = true;
        this.toolUI.enabled = false
        this.tool.enabled = false
        this.flag_toolIsOn = false
        this.isToolActive = false
        this.deactivateCutTool()
    }

    private buttonBack(): void {
        this.chinPosUI.enabled = false;
        this.toolUI.enabled = true
        this.tool.enabled = true
        this.flag_toolIsOn = true
        this.isToolActive = true
        this.activateCutTool()
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

    public addOnStateChangedCallback(callback: (isActive: boolean) => void) {
        this.onStateChangedCallbacks.push(callback);
    }

    public set isToolActive(value: boolean) {
        if (this._flag_toolIsActive === value) return;
        this._flag_toolIsActive = value;
        for (let i = 0; i < this.onStateChangedCallbacks.length; i++) {
            this.onStateChangedCallbacks[i](value);
        }
    }

   

}
