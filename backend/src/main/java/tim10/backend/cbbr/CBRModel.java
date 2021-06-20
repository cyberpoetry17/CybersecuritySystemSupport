package tim10.backend.cbbr;

import es.ucm.fdi.gaia.jcolibri.cbrcore.Attribute;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CaseComponent;
import tim10.backend.attack.DurationEnum;

public class CBRModel implements CaseComponent {
	private String attackName;
	private String likelihoodOfAttack;
	private String typicalSeverity;
	private String prerequisites;
	
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
	@Override
	public Attribute getIdAttribute() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String toString() {
		return "CBRModel [attackName=" + attackName + ", likelihoodOfAttack=" + likelihoodOfAttack
				+ ", typicalSeverity=" + typicalSeverity + ", prerequisites=" + prerequisites + "]";
	}
	
	
}	
