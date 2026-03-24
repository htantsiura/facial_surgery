@component
export class BoneScaling extends BaseScriptComponent {

    @input
    boneRoot: SceneObject

    onAwake() {

        this.createEvent("OnStartEvent").bind(() => {

        })

    }
}
