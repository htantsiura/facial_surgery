import { Switch } from "SpectaclesUIKit.lspkg/Scripts/Components/Switch/Switch"

@component
export class SwitcherLogic extends BaseScriptComponent {

    @input
    switcher: Switch
    
    @input
    object: SceneObject

    onAwake() {
        let state = this.switcher.isOn
        print("STATE " + state)

    }

    private objectSwitcher(): void {

    }
}
