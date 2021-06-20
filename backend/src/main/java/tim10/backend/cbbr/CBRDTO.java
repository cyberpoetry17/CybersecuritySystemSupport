package tim10.backend.cbbr;

public class CBRDTO {
	private String attackName;
	private String likelihoodOfAttack;
	private String typicalSeverity;
	private String prerequisites;
	
	public CBRDTO() {
		super();
	}
	
	public String getAttackName() {
		return attackName;
	}
	public void setAttackName(String attackName) {
		this.attackName = attackName;
	}
	public String getLikelihoodOfAttack() {
		return likelihoodOfAttack;
	}
	public void setLikelihoodOfAttack(String likelihoodOfAttack) {
		this.likelihoodOfAttack = likelihoodOfAttack;
	}
	public String getTypicalSeverity() {
		return typicalSeverity;
	}
	public void setTypicalSeverity(String typicalSeverity) {
		this.typicalSeverity = typicalSeverity;
	}
	public String getPrerequisites() {
		return prerequisites;
	}
	public void setPrerequisites(String prerequisites) {
		this.prerequisites = prerequisites;
	}
	
	
}
