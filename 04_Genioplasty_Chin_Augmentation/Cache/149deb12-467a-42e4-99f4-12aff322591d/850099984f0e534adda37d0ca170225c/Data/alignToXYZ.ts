import { LSTween } from "LSTween.lspkg/LSTween"
import Easing from "LSTween.lspkg/TweenJS/Easing"


@component
export class alignToXYZ extends BaseScriptComponent {

    @input
    boneRoot: SceneObject

    private defaultRot: quat

    onAwake() {
        this.defaultRot = quat.fromEulerAngles(0, 0, 0)
    }

    private buttonAlign(): void { 
        let boneRootTrf = this.boneRoot.getTransform()
        // this.boneRoot.getTransform().setLocalRotation(this.defaultRot)
        this.tweenFunc(boneRootTrf, this.defaultRot, 500)

    }

    private tweenFunc(transform, quaternion, t): void {
            LSTween.rotateToLocal(
                transform,
                quaternion,
                t
            )
            .easing(Easing.Quadratic.Out) 
            .start()
        }
}
