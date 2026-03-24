import { Switch } from "SpectaclesUIKit.lspkg/Scripts/Components/Switch/Switch"

@component
export class SwitcherLogic extends BaseScriptComponent {

    @input
    switcher: Switch
    
    @input
    objects: SceneObject[]

    @input
    objectShowWhenOff: SceneObject[]

    private state: Boolean

    onAwake() {
        this.createEvent("OnStartEvent").bind(() => {
            this.state = this.switcher.isOn

            this.switcher.onValueChange.add((value) => {
                if(value === 1) {
                    for( let i = 0; i < this.objectOn.length; i++) {
                        this.objects[i].enabled = true;
                    }
                    for( let i = 0; i < this.objectOff.length; i++) {
                        this.objectShowWhenOff[i].enabled = false;
                    }
                } else {
                    for( let i = 0; i < this.objectOn.length; i++) {
                        this.objects[i].enabled = false;
                    }
                    for( let i = 0; i < this.objectOff.length; i++) {
                        this.objectShowWhenOff[i].enabled = true;
                    }
                }
            })
        })
    }
}
