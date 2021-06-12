package tim10.backend.calculator.metrics;

public class EnvironmentalMetrics {

	private double collateralDamagePotential;
	private double targetDistribution;
	
	public EnvironmentalMetrics() {
		super();
	}

	public EnvironmentalMetrics(double collateralDamagePotential, double targetDistribution) {
		super();
		this.collateralDamagePotential = collateralDamagePotential;
		this.targetDistribution = targetDistribution;
	}

	public double getCollateralDamagePotential() {
		return collateralDamagePotential;
	}

	public void setCollateralDamagePotential(double collateralDamagePotential) {
		this.collateralDamagePotential = collateralDamagePotential;
	}

	public double getTargetDistribution() {
		return targetDistribution;
	}

	public void setTargetDistribution(double targetDistribution) {
		this.targetDistribution = targetDistribution;
	}
}
