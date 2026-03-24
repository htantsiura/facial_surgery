@component
export class buttonMeasureTool extends BaseScriptComponent {

    @input
    measureTool: ObjectPrefab

    @input
    boneRoot: SceneObject

    @input
    uiBoneController: SceneObject

    private spawnedInstance: SceneObject | null = null;
    private flag_isTool: Boolean = false
    private startPos: vec3 = new vec3(0, 0, 0)


    onAwake() {
        this.spawnMeasureTool();
        this.disableMeasureTool();

    }

    private spawnMeasureTool(): void {
        if (this.spawnedInstance) {
            this.removeMeasureTool();
        }
        this.spawnedInstance = this.measureTool.instantiate(this.boneRoot);
        let uiPos = this.uiBoneController.getTransform().getWorldPosition()
        this.startPos = new vec3(uiPos.x, uiPos.y + 11, uiPos.z)
        this.spawnedInstance.getTransform().setWorldPosition(this.startPos)
    }

    private removeMeasureTool(): void {
        if (this.spawnedInstance) {
            this.spawnedInstance.destroy(); 
            this.spawnedInstance = null; 
        }
    }

    private enableMeasureTool(): void {
        if (this.spawnedInstance) {
            this.spawnedInstance.enabled = true;

        }
    }

    private disableMeasureTool(): void {
        if (this.spawnedInstance) {
            this.spawnedInstance.enabled = false;

        }
    }

    private buttonMeasureTool(): void {
        if(!this.flag_isTool) {
            this.enableMeasureTool()
            this.flag_isTool = true
        }
        else {
            this.disableMeasureTool()
            this.flag_isTool = false
        }

    }



    /* private buttonMeasureTool(): void {
        if(!this.flag_isMeasureTool) {
            this.spawnMeasureTool()
            this.flag_isMeasureTool = true
        }
        else {
            this.removeMeasureTool()
            this.flag_isMeasureTool = false
        }

    } */
}
