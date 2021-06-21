package tim10.backend.bayes;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import unbbayes.io.NetIO;
import unbbayes.io.exception.LoadException;
import unbbayes.prs.bn.JunctionTreeAlgorithm;
import unbbayes.prs.bn.ProbabilisticNetwork;
import unbbayes.prs.bn.ProbabilisticNode;
import unbbayes.prs.Node;
@Component
public class BayesProbabilityCalculator {

    public List<BayesResult> calculateProbabilities(AttackDTO attackDTO){
        ProbabilisticNetwork net = null;

        try{
            net = (ProbabilisticNetwork)new NetIO().load(new File("..//BBayes//bayes.net"));
        } catch (LoadException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        JunctionTreeAlgorithm alg = new JunctionTreeAlgorithm();
        alg.setNetwork(net);
        alg.run();

        ProbabilisticNode stealthyNode = (ProbabilisticNode)net.getNode("Stealthy");
        ProbabilisticNode durationNode = (ProbabilisticNode)net.getNode("Duration");
        ProbabilisticNode originKnownNode = (ProbabilisticNode)net.getNode("OriginKnown");
        ProbabilisticNode automatedNode = (ProbabilisticNode)net.getNode("Automated");
        ProbabilisticNode aggresiveNode = (ProbabilisticNode)net.getNode("Aggresive");
        ProbabilisticNode persistentNode = (ProbabilisticNode)net.getNode("Persistent");
        ProbabilisticNode advancedNode = (ProbabilisticNode)net.getNode("Advanced");
        ProbabilisticNode targetedNode = (ProbabilisticNode)net.getNode("Targeted");

        stealthyNode.addFinding(attackDTO.isStealthy() ? 0 : 1);
        durationNode.addFinding(attackDTO.getDuration().index);
        originKnownNode.addFinding(attackDTO.isOriginKnown() ? 0 : 1);
        automatedNode.addFinding(attackDTO.isAutomated() ? 0 : 1);
        aggresiveNode.addFinding(attackDTO.isAggresive() ? 0 : 1);
        persistentNode.addFinding(attackDTO.isPersistent() ? 0 : 1);
        advancedNode.addFinding(attackDTO.isAdvanced() ? 0 : 1);
        targetedNode.addFinding(attackDTO.isTargeted() ? 0 : 1);

        try{
            net.updateEvidences();
        }catch (Exception e){
            e.printStackTrace();
        }

        List<BayesResult> predictions = new ArrayList<>();

        for(Node node : net.getNodes()){
            if(node.getStatesSize() == 2 && node.getStateAt(0).equalsIgnoreCase("Y")){
                predictions.add(new BayesResult(node.getName(), ((ProbabilisticNode)node).getMarginalAt(0)));
            }
        }

        predictions.sort(new BayesResultComparator());

        return predictions;
    }
}
