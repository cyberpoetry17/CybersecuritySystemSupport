package tim10.backend.calculator.metrics;

public class BaseMetrics {

	private double accessVector;
	private double accessComplexity;
	private double authentication;
	private double confidentialityImpact;
	
	public BaseMetrics() {
		super();
	}

	public BaseMetrics(double accessVector, double accessComplexity, double authentication, double confidentialityImpact) {
		super();
		this.accessVector = accessVector;
		this.accessComplexity = accessComplexity;
		this.authentication = authentication;
		this.confidentialityImpact = confidentialityImpact;
	}

	public double getAccessVector() {
		return accessVector;
	}

	public void setAccessVector(double accessVector) {
		this.accessVector = accessVector;
	}

	public double getAccessComplexity() {
		return accessComplexity;
	}

	public void setAccessComplexity(double accessComplexity) {
		this.accessComplexity = accessComplexity;
	}

	public double getAuthentication() {
		return authentication;
	}

	public void setAuthentication(double authentication) {
		this.authentication = authentication;
	}

	public double getConfidentialityImpact() {
		return confidentialityImpact;
	}

	public void setConfidentialityImpact(double confidentialityImpact) {
		this.confidentialityImpact = confidentialityImpact;
	}
}
