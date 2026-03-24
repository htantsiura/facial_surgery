@component
export class MainUIController extends BaseScriptComponent {

    @input
    mainMenu: SceneObject[]

    @input
    dentalOcclusionObject: SceneObject[]

    @input
    boneMeasureObject: SceneObject[]

    @input
    teethSclicingObject: SceneObject[]

    

    onAwake() {
        this.reset()

    }

    private reset(): void {
        this.turnOffAll();
        this.turnOnMainMenu()
    }

    private buttonDentalOcclusion(): void {
        this.turnOffAll();
        this.turnOnDentalOcclusionObject()
    }

    private buttonBoneMeasureObject(): void {
        this.turnOffAll();
        this.turnOnBoneMeasureObject()
    }

    private buttonTeethSlicing(): void {
        this.turnOffAll();
        this.turnOnteethSclicingObject()
    }

    private turnOffAll(): void {
        this.turnOffMainMenu()
        this.turnOffDentalOcclusionObject()
        this.turnOffBoneMeasureObject()
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

    private turnOnDentalOcclusionObject(): void {
        for( let i = 0; i < this.dentalOcclusionObject.length; i++) {
            this.dentalOcclusionObject[i].enabled = true
        }
    }

    private turnOffDentalOcclusionObject(): void {
        for( let i = 0; i < this.dentalOcclusionObject.length; i++) {
            this.dentalOcclusionObject[i].enabled = false
        }
    }

    private turnOnBoneMeasureObject(): void {
        for( let i = 0; i < this.boneMeasureObject.length; i++) {
            this.boneMeasureObject[i].enabled = true
        }
    }

    private turnOffBoneMeasureObject(): void {
        for( let i = 0; i < this.boneMeasureObject.length; i++) {
            this.boneMeasureObject[i].enabled = false
        }
    }

    private turnOnteethSclicingObject(): void {
        for( let i = 0; i < this.teethSclicingObject.length; i++) {
            this.teethSclicingObject[i].enabled = true
        }
    }

    private turnOffteethSclicingObject(): void {
        for( let i = 0; i < this.teethSclicingObject.length; i++) {
            this.teethSclicingObject[i].enabled = false
        }
    }

    
}
