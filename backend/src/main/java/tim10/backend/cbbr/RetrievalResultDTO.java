package tim10.backend.cbbr;

public class RetrievalResultDTO {
	private String description;
	private Double resultValue;
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Double getResultValue() {
		return resultValue;
	}
	public void setResultValue(Double resultValue) {
		this.resultValue = resultValue;
	}
	public RetrievalResultDTO() {
		super();
	}
	public RetrievalResultDTO(String description, Double resultValue) {
		super();
		this.description = description;
		this.resultValue = resultValue;
	}
	
	
}
