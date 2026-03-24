@component
export class NewScript extends BaseScriptComponent {

    @input
    mainMenu: SceneObject[]

    @input
    startMenuUIObject: SceneObject

    @input
    dentalOcclusionObject: SceneObject

    @input
    boneMeasureObject: SceneObject

    @input
    teethSclicingObject: SceneObject

    @input
    teethSclicingUI: SceneObject
    

    onAwake() {

    }

    private reset(): void {
        this.turnOnMainMenu()

        this.dentalOcclusionObject.enabled = false;
        this.boneMeasureObject.enabled = false;

        this.teethSclicingObject.enabled = false;
        this.teethSclicingUI.enabled = false;
    }

    private turnOnMainMenu(): void {
        for( let i = 0; i < this.mainMenu.length; i++) {
            this.mainMenu[i].enabled = true
        }
    }

    private turnOffMainMenu(): void {
        for( let i = 0; i < this.mainMenu.length; i++) {
            this.mainMenu[i].enabled = false
        }
    }

    private turnOnDentalOcclusion(): void {

    }





    button

    private buttonTeethSlicing(): void {
        this.teethSclicingObject.enabled = true;
        this.teethSclicingUI.enabled = true;
    }
}
