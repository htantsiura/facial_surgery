@component
export class NewScript extends BaseScriptComponent {

    @input
    mainMenu: SceneObject[]

    @input
    dentalOcclusionObject: SceneObject[]

    @input
    boneMeasureObject: SceneObject[]

    @input
    teethSclicingObject: SceneObject[]

    

    onAwake() {

    }

    private reset(): void {
        this.turnOffAll();
        this.turnOnMainMenu()
    }

    private turnOffAll(): void {
        this.turnOffMainMenu()
        this.turnOffDentalOcclusion()
        this.turnOffboneMeasureObject()
        this.turnOffteethSclicingObject()
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
        for( let i = 0; i < this.dentalOcclusionObject.length; i++) {
            this.dentalOcclusionObject[i].enabled = true
        }
    }

    private turnOffDentalOcclusion(): void {
        for( let i = 0; i < this.dentalOcclusionObject.length; i++) {
            this.dentalOcclusionObject[i].enabled = true
        }
    }

    private turnOnboneMeasureObject(): void {
        for( let i = 0; i < this.boneMeasureObject.length; i++) {
            this.boneMeasureObject[i].enabled = true
        }
    }

    private turnOffboneMeasureObject(): void {
        for( let i = 0; i < this.boneMeasureObject.length; i++) {
            this.boneMeasureObject[i].enabled = true
        }
    }

    private turnOnteethSclicingObject(): void {
        for( let i = 0; i < this.teethSclicingObject.length; i++) {
            this.teethSclicingObject[i].enabled = true
        }
    }

    private turnOffteethSclicingObject(): void {
        for( let i = 0; i < this.teethSclicingObject.length; i++) {
            this.teethSclicingObject[i].enabled = true
        }
    }

    
}
