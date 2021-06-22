package tim10.backend.prolog;

import java.util.ArrayList;

import org.springframework.stereotype.Component;

import com.ugos.jiprolog.engine.JIPEngine;
import com.ugos.jiprolog.engine.JIPQuery;
import com.ugos.jiprolog.engine.JIPTerm;
import com.ugos.jiprolog.engine.JIPVariable;

@Component
public class PrologService {
	public ArrayList<String> getMitigations(String attackName){
		ArrayList<String>frontList=new ArrayList<String>();
		String attackingName = attackName.split("\"")[1];
		attackingName = attackingName.replaceAll(" ", "_").toLowerCase();
		JIPEngine engine = new JIPEngine();
		
		engine.consultFile("..//Facts//prolog.pl");
		JIPQuery query = engine.openSynchronousQuery("retrieve_mitigations("+attackingName+", B).");

		JIPTerm solution;
		while ( (solution = query.nextSolution()) != null) {
			System.out.println("solution: " + solution);
			for (JIPVariable var: solution.getVariables()) {
				System.out.println(var.getName() + "=" + var.getValue());
				frontList.add(var.getValue().toString().replace("'.'(", "").replace("[]))", ""));
			}
		}
		
		return frontList;
	}
}
