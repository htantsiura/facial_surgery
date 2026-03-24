import { Interactable } from "SpectaclesInteractionKit.lspkg/Components/Interaction/Interactable/Interactable"
import { CutToolController } from "./CutToolController"
import { InteractableManipulation } from "SpectaclesInteractionKit.lspkg/Components/Interaction/InteractableManipulation/InteractableManipulation"


Interactable

@component
export class PlaneBuilder extends BaseScriptComponent {

    @input
    cutToolControllerScript: CutToolController

    @input
    point0: SceneObject

    @input
    point1: SceneObject

    @input
    point2: SceneObject

    @input
    mesh: RenderMeshVisual

    @input
    matToolMarker: Material

    @input
    bone: SceneObject

    @input
    slicedMat: Material

    @input
    slicedMatInverted: Material

    private p0: vec3
    private p1: vec3
    private p2: vec3

    private planeNormal: vec3
    private centerPos: vec3

    private markerScale: vec3

    private flat_toolIsActive: boolean


    onAwake() {

        this.markerScale = new vec3(2, 2, 2)

        this.createEvent("UpdateEvent").bind(() => {
            this.point0.getTransform().setWorldScale(this.markerScale)
            this.point1.getTransform().setWorldScale(this.markerScale)
            this.point2.getTransform().setWorldScale(this.markerScale)
        })

        if (this.cutToolControllerScript) {
            // Подписываемся на изменения флага из ToolManager
            this.cutToolControllerScript.addOnStateChangedCallback((isActive) => {
                this.updateObjectParameters(isActive);
            });
        } else {
            print("Не забудьте назначить ToolManager в инспекторе!");
        }

        this.createEvent("OnStartEvent").bind(() => {
            let interactable0 = this.point0.getComponent(Interactable.getTypeName())
            let interactable1 = this.point1.getComponent(Interactable.getTypeName())
            let interactable2 = this.point2.getComponent(Interactable.getTypeName())

            if (interactable0.onDragUpdate) {
                interactable0.onDragUpdate.add(() => {
                    this.rebuildMesh();
                    this.alignObject();
                    this.vectorsToShader()
                });
            }
            if (interactable1.onDragUpdate) {
                interactable1.onDragUpdate.add(() => {
                    this.rebuildMesh();
                    this.alignObject();
                    this.vectorsToShader()
                });
            }
            if (interactable2.onDragUpdate) {
                interactable2.onDragUpdate.add(() => {
                    this.rebuildMesh();
                    this.alignObject();
                    this.vectorsToShader()
                });
            }
            this.rebuildMesh();
        })
    }

    private rebuildMesh(): void {
        this.p0 = this.point0.getTransform().getLocalPosition()
        this.p1 = this.point1.getTransform().getLocalPosition()
        this.p2 = this.point2.getTransform().getLocalPosition()

        var builder = new MeshBuilder([
            { name: "position", components: 3 },
            { name: "normal", components: 3 },
            { name: "texture0", components: 2 },
        ]);

        builder.topology = MeshTopology.Triangles;
        builder.indexType = MeshIndexType.UInt16;

        builder.appendVerticesInterleaved([
            // Position                             Normal      UV       Index
            this.p0.x, this.p0.y, this.p0.z,        0, 0, 1,    1, 0,    // 0
            this.p1.x, this.p1.y, this.p1.z,        0, 0, 1,    0, 0,    // 1
            this.p2.x, this.p2.y, this.p2.z,        0, 0, 1,    0, 1,    // 2
            // right, top, -1,      0, 0, 1,    1, 1,    // 3
        ]);

        builder.appendIndices([
            0,1,2, // First Triangle
            // 2,3,0, // Second Triangle
        ]);

        if(builder.isValid()){
            this.getSceneObject().getComponent("RenderMeshVisual").mesh = builder.getMesh();
            builder.updateMesh();
        }
        else{
            print("Mesh data invalid!");
        }
    }

    private alignObject(): void {
        // if(!this.followerObject) return;

        let v1 = this.p1.sub(this.p0)
        let v2 = this.p2.sub(this.p0)
        this.planeNormal = v1.cross(v2).normalize()
        let targetRotation = quat.rotationFromTo(vec3.up(), this.planeNormal); 
        // this.followerObject.getTransform().setLocalRotation(targetRotation)
        this.centerPos = this.p0.add(this.p1).add(this.p2).uniformScale(1/3);
        // this.followerObject.getTransform().setLocalPosition(this.centerPos);
    }

    private vectorsToShader(): void { 
        if(!this.slicedMat) return;

        let matPass = this.slicedMat.mainPass
        let matPassInverted = this.slicedMatInverted.mainPass

        matPass.clipPosX = -this.planeNormal.x
        matPass.clipPosY = -this.planeNormal.y
        matPass.clipPosZ = -this.planeNormal.z

        matPass.clipNomalX = this.centerPos.x
        matPass.clipNomalY = this.centerPos.y
        matPass.clipNomalZ = this.centerPos.z

        matPassInverted.clipPosX = this.planeNormal.x
        matPassInverted.clipPosY = this.planeNormal.y
        matPassInverted.clipPosZ = this.planeNormal.z

        matPassInverted.clipNomalX = this.centerPos.x
        matPassInverted.clipNomalY = this.centerPos.y
        matPassInverted.clipNomalZ = this.centerPos.z

    }

    private updateObjectParameters(isActive: boolean): void {
        if (isActive) {
            print("cut tool activated");
            this.matToolMarker.mainPass.isActive = 1
            this.objectInteractable(this.bone, false)
            this.objectInteractable(this.point0, true)
            this.objectInteractable(this.point1, true)
            this.objectInteractable(this.point2, true)

        } else {
            print("cut tool deactivated");
            this.matToolMarker.mainPass.isActive = 0
            this.objectInteractable(this.bone, true)
            this.objectInteractable(this.point0, false)
            this.objectInteractable(this.point1, false)
            this.objectInteractable(this.point2, false)
        }
    }

    private objectInteractable(object: SceneObject, value: boolean): void {
        object.getComponent(Interactable.getTypeName()).enabled = value
        object.getComponent(InteractableManipulation.getTypeName()).enabled = value
    }

    
    
}

