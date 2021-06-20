package tim10.backend.bayes;

import java.util.Comparator;

public class BayesResultComparator implements Comparator<BayesResult> {
    @Override
    public int compare(BayesResult o1, BayesResult o2) {
        int result = 0;
        if(o1.getPercentage() > o2.getPercentage()) result = -1;
        else if(o2.getPercentage() > o1.getPercentage()) result = 1;

        return result;
    }
}
