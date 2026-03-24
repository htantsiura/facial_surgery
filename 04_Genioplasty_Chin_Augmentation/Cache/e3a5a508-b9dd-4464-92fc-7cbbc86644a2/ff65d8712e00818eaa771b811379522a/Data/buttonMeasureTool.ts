@component
export class buttonMeasureTool extends BaseScriptComponent {

    @input
    measureTool: ObjectPrefab

    @input
    boneRoot: SceneObject

    private spawnedInstance: SceneObject | null = null;
    private flag_isMeasureTool: Boolean = false


    onAwake() {

    }

    private spawnMeasureTool(): void {
        if (this.spawnedInstance) {
            this.removeMeasureTool();
        }
        this.spawnedInstance = this.measureTool.instantiate(this.boneRoot);
    }

    private removeMeasureTool(): void {
        if (this.spawnedInstance) {
            this.spawnedInstance.destroy(); 
            this.spawnedInstance = null; 
        }
    }

    private buttonMeasureTool(): void {
        if(!this.flag_isMeasureTool) {
            this.spawnMeasureTool()
            this.flag_isMeasureTool = true
        }
        else {
            this.removeMeasureTool()
            this.flag_isMeasureTool = false
        }

    }
}
