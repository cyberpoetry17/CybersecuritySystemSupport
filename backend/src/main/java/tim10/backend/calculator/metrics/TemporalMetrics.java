package tim10.backend.calculator.metrics;

public class TemporalMetrics {

	@Override
	public String toString() {
		return "TemporalMetrics [exploitability=" + exploitability + ", remediationLevel=" + remediationLevel
				+ ", reportConfidence=" + reportConfidence + "]";
	}

	private double exploitability;
	private double remediationLevel;
	private double reportConfidence;
	
	public TemporalMetrics() {
		super();
	}

	public TemporalMetrics(double exploitability, double remediationLevel, double reportConfidence) {
		super();
		this.exploitability = exploitability;
		this.remediationLevel = remediationLevel;
		this.reportConfidence = reportConfidence;
	}

	public double getExploitability() {
		return exploitability;
	}

	public void setExploitability(double exploitability) {
		this.exploitability = exploitability;
	}

	public double getRemediationLevel() {
		return remediationLevel;
	}

	public void setRemediationLevel(double remediationLevel) {
		this.remediationLevel = remediationLevel;
	}

	public double getReportConfidence() {
		return reportConfidence;
	}

	public void setReportConfidence(double reportConfidence) {
		this.reportConfidence = reportConfidence;
	}
}
