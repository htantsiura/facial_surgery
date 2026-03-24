@component
export class NewScript extends BaseScriptComponent {


    @input
    marker0: SceneObject

    @input
    marker1: SceneObject

    @input
    text: Text

    // private marker0Trf
    // private marker1Trf



    onAwake() {

        let marker0Trf = this.marker0.getTransform()
        let marker1Trf = this.marker1.getTransform()

        this.createEvent("UpdateEvent").bind(( ) => {

            let pos0 = marker0Trf.getWorldPosition()
            let pos1 = marker1Trf.getWorldPosition()

            print(pos0)
            print(" ---- " + pos1)

            let distance = pos0.distance(pos1)
            this.text.text = distance.toFixed(3)

        })

    }
}
