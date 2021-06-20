package tim10.backend.bayes;

import java.util.Date;

public class AttackDTO {
    private String reporterFirstName;
    private String reporterLastName;
    private Date occurenceDate;
    private boolean stealthy;
    private DurationEnum duration;
    private boolean originKnown;
    private boolean automated;
    private boolean aggresive;
    private boolean advanced;
    private boolean targeted;
    private boolean persistent;

    public String getReporterFirstName() {
        return reporterFirstName;
    }

    public void setReporterFirstName(String reporterFirstName) {
        this.reporterFirstName = reporterFirstName;
    }

    public String getReporterLastName() {
        return reporterLastName;
    }

    public void setReporterLastName(String reporterLastName) {
        this.reporterLastName = reporterLastName;
    }

    public Date getOccurenceDate() {
        return occurenceDate;
    }

    public void setOccurenceDate(Date occurenceDate) {
        this.occurenceDate = occurenceDate;
    }

    public boolean isStealthy() {
        return stealthy;
    }

    public void setStealthy(boolean stealthy) {
        this.stealthy = stealthy;
    }

    public DurationEnum getDuration() {
        return duration;
    }

    public void setDuration(DurationEnum duration) {
        this.duration = duration;
    }

    public boolean isOriginKnown() {
        return originKnown;
    }

    public void setOriginKnown(boolean originKnown) {
        this.originKnown = originKnown;
    }

    public boolean isAutomated() {
        return automated;
    }

    public void setAutomated(boolean automated) {
        this.automated = automated;
    }

    public boolean isAggresive() {
        return aggresive;
    }

    public void setAggresive(boolean aggresive) {
        this.aggresive = aggresive;
    }

    public boolean isAdvanced() {
        return advanced;
    }

    public void setAdvanced(boolean advanced) {
        this.advanced = advanced;
    }

    public boolean isTargeted() {
        return targeted;
    }

    public void setTargeted(boolean targeted) {
        this.targeted = targeted;
    }

    public boolean isPersistent() {
        return persistent;
    }

    public void setPersistent(boolean persistent) {
        this.persistent = persistent;
    }
}
