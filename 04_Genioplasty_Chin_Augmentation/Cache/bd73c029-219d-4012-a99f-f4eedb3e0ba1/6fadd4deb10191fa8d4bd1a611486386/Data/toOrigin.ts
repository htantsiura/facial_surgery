import { LSTween } from "LSTween.lspkg/LSTween"
import Easing from "LSTween.lspkg/TweenJS/Easing"


@component
export class NewScript extends BaseScriptComponent {

    @input
    boneRoot: SceneObject

    private originPos: vec3
    private originRot: quat
    private originScale: vec3
    private boneRootTrf: Transform

    onAwake() {
        this.boneRootTrf = this.boneRoot.getTransform()
        this.originPos = this.boneRoot.getTransform().getLocalPosition()
        this.originRot = this.boneRoot.getTransform().getLocalRotation()
        this.originScale = this.boneRoot.getTransform().getLocalScale()
    }

    private buttonToOrigin(): void {
        // this.boneRoot.getTransform().setLocalPosition(this.originPos)
        // this.boneRoot.getTransform().setLocalRotation(this.originRot)
        // this.boneRoot.getTransform().setLocalScale(this.originScale)

        this.tweenMoveFunc(this.boneRootTrf, this.originPos, 500);
        this.tweenRotFunc(this.boneRootTrf, this.originRot, 500);
        this.tweenScaleFunc(this.boneRootTrf, this.originScale, 500);
    }

    private tweenRotFunc(transform, quaternion, t): void {
        LSTween.rotateToLocal(
            transform,
            quaternion,
            t
        )
        .easing(Easing.Quadratic.Out) 
        .start()
    }

    private tweenMoveFunc(transform, pos, t): void {
        LSTween.moveToLocal(
            transform,
            pos,
            t
        )
        .easing(Easing.Quadratic.Out) 
        .start()
    }

    private tweenScaleFunc(transform, scale, t): void {
        LSTween.scaleToLocal(
            transform,
            scale,
            t
        )
        .easing(Easing.Quadratic.Out) 
        .start()
    }
}
