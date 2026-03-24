@component
export class buttonCutTool extends BaseScriptComponent {

    @input
    cutToolObject: SceneObject

    @input
    cutUI: SceneObject

    onAwake() {

        this.createEvent("OnStartEvent").bind(() => {
            this.cutToolObject.enabled = false
            this.cutUI.enabled = false
        })
    }

    private deactivateCutTool(): void {
        this.cutToolObject.enabled = false
    }

    private activateCutTool(): void {
        this.cutToolObject.enabled = true
    }

    private resetCutTool(): void {
        
    }

    private buttonCutTool(): void {
        if(!this.cutToolObject) {
            this.cutToolObject.enabled = true
            this.cutUI.enabled = true
        } else {
            this.cutToolObject.enabled = false
            this.cutUI.enabled = false
        }
    }

   

}
