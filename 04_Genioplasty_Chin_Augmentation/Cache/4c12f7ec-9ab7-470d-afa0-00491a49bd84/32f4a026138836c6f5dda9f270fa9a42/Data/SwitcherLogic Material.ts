import { Switch } from "SpectaclesUIKit.lspkg/Scripts/Components/Switch/Switch"

@component
export class SwitcherLogic extends BaseScriptComponent {

    @input
    switcher: Switch
    
    @input
    mat: Material

    private state: Boolean

    onAwake() {
        this.createEvent("OnStartEvent").bind(() => {
            this.state = this.switcher.isOn

            this.switcher.onValueChange.add((value) => {
                if(value === 1) {
                    this.mat.mainPass.twoSided = false
                    
                } else {
                    this.mat.mainPass.twoSided = true
                    
                }
            })
        })
    }
}
