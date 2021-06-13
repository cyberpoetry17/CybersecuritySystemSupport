import { Duration } from "./duration.enum";

export class Attack{
    public reporterFirstName: string = "";
    public reporterLastName: string = "";
    public occurenceDate: Date = new Date();
    public stealthy: boolean = false;
    public duration: Duration = Duration.SHORT;
    public originKnown: boolean = false;
    public automated: boolean = false;
    public aggresive: boolean = false;
    public advanced: boolean = false;
    public targeted: boolean = false;
    public persistent: boolean = false;

    public isValid():boolean{
        return !!(this.isStringBlank(this.reporterFirstName) && this.isStringBlank(this.reporterLastName)
        && this.occurenceDate != null && this.occurenceDate.getTime() <= ((new Date()).getTime())
        && this.duration != null);
    }

    private isStringBlank(str:string):boolean{
        return !!(typeof str != 'undefined' && str);
    }
}