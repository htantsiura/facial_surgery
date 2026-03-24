@component
export class buttonMeasureTool extends BaseScriptComponent {

    @input
    measureTool: ObjectPrefab

    @input
    boneRoot: SceneObject

    @input
    uiBoneController: SceneObject

    private spawnedInstance: SceneObject | null = null;
    private flag_isMeasureTool: Boolean = false
    private startPos: vec3 = new vec3(0, 0, 0)


    onAwake() {

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
