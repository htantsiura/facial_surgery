
@component
export class NewScript extends BaseScriptComponent {

    @input
    cameraRootPTM: PinToMeshComponent

    @input
    uCoord: number

    @input
    vCoord: number


    onAwake() {

        this.createEvent("UpdateEvent").bind(( ) => {
            let pinPos = new vec2(this.uCoord, this.vCoord)
            this.cameraRootPTM.pinUV = pinPos
        })

    }
}
