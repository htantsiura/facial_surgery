@component
export class buttonCutTool extends BaseScriptComponent {

    @input
    cutToolObject: SceneObject

    @input
    cutUI: SceneObject

    private flag_isTool: Boolean = false
    private flag_toolEnabled: Boolean = false
    private startPos: vec3 = new vec3(0, 0, 0)


    onAwake() {
        this.deactivateCutTool();

    }

 

    private deactivateCutTool(): void {
        this.cutToolObject.enabled = false
    }

    private activateCutTool(): void {
        
    }

    private resetCutTool(): void {
        
    }

    private buttonCutTool(): void {
        if(!this.cutToolObject) {
            this.cutToolObject.enabled = true
        } else {
            this.cutToolObject.enabled = false
        }
    }

   

}
