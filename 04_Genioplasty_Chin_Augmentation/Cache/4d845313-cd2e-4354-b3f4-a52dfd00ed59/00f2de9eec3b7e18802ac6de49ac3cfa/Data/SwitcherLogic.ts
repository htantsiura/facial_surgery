import { Switch } from "SpectaclesUIKit.lspkg/Scripts/Components/Switch/Switch"

@component
export class SwitcherLogic extends BaseScriptComponent {

    @input
    switcher: Switch
    
    @input
    objectOn: SceneObject[]

    @input
    objectOff: SceneObject[]

    private state: Boolean

    onAwake() {
        this.createEvent("OnStartEvent").bind(() => {
            this.state = this.switcher.isOn

            this.switcher.onValueChange.add((value) => {
                if(value === 1) {
                    for( let i = 0; i < this.objectOff.length; i++) {
                        this.objectOff[i].enabled = false;
                    }
                    for( let i = 0; i < this.objectOn.length; i++) {
                        this.objectOn[i].enabled = true;
                    }
                } else {
                    for( let i = 0; i < this.objectOff.length; i++) {
                        this.objectOff[i].enabled = true;
                    }
                    for( let i = 0; i < this.objectOn.length; i++) {
                        this.objectOn[i].enabled = false;
                    }
                }
            })
        })
    }
}
