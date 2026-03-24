@component
export class buttonCutTool extends BaseScriptComponent {

    @input
    cutTool: ObjectPrefab

    @input
    boneRoot: SceneObject

    @input
    cutUI: SceneObject

    private spawnedInstance: SceneObject | null = null;
    private flag_isTool: Boolean = false
    private flag_toolEnabled: Boolean = false
    private startPos: vec3 = new vec3(0, 0, 0)


    onAwake() {
        this.spawnCutTool();
        this.disableCutTool();

    }

    private spawnCutTool(): void {
        if (this.spawnedInstance) {
            this.removeCutTool();
        }
        this.spawnedInstance = this.cutTool.instantiate(this.boneRoot);
        let uiPos = this.cutUI.getTransform().getWorldPosition()
        this.startPos = new vec3(uiPos.x, uiPos.y + 11, uiPos.z)
        this.spawnedInstance.getTransform().setWorldPosition(this.startPos)
    }

    private removeCutTool(): void {
        if (this.spawnedInstance) {
            this.spawnedInstance.destroy(); 
            this.spawnedInstance = null; 
        }
    }

    private enableCutTool(): void {
        if (this.spawnedInstance) {
            this.spawnedInstance.enabled = true;

        }
    }

    private disableCutTool(): void {
        if (this.spawnedInstance) {
            this.spawnedInstance.enabled = false;
            this.flag_toolEnabled = false

        } 
    }

    private buttonCutTool(): void {
        if(!this.flag_isTool) {
            this.spawnCutTool()
            this.flag_isTool = true
            this.flag_toolEnabled = true
        } else
        if(this.flag_isTool && !this.flag_toolEnabled) {
            this.enableCutTool()
            this.flag_toolEnabled = true
        }
        else {
            this.disableCutTool()
            // this.flag_toolEnabled = false
        }

    }

}
