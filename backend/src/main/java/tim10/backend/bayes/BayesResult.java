package tim10.backend.bayes;

public class BayesResult {
    private String attack;
    private float percentage;

    public BayesResult(String attack, float percentage) {
        this.attack = attack;
        this.percentage = percentage;
    }

    public float getPercentage() {
        return percentage;
    }

    public String getAttack() {
        return attack;
    }
}
