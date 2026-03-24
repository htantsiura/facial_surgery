import { Switch } from "SpectaclesUIKit.lspkg/Scripts/Components/Switch/Switch"

@component
export class SwitcherLogic extends BaseScriptComponent {

    @input
    switcher: Switch
    
    @input
    object: SceneObject

    private state: Boolean

    onAwake() {
        this.createEvent("OnStartEvent").bind(() => {
            this.state = this.switcher.isOn

            this.switcher.onValueChange.add((value) => {
            if(value === 1) {
                this.object.enabled = true;
            } else {
                this.object.enabled = false;
            }
        })
        })
        
    }
}
