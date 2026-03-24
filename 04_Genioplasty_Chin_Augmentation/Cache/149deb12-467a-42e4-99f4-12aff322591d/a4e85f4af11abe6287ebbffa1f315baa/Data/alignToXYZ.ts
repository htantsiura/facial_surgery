@component
export class alignToXYZ extends BaseScriptComponent {

    @input
    boneRoot: SceneObject

    private defaultRot: quat

    onAwake() {
        this.defaultRot = quat.fromEulerAngles(0, 0, 0)
    }

    private buttonAlign(): void { 
        this.boneRoot.getTransform().setLocalRotation(this.defaultRot)
    }
}
