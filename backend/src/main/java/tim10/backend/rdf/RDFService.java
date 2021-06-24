package tim10.backend.rdf;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.jena.query.Query;
import org.apache.jena.query.QueryExecution;
import org.apache.jena.query.QueryExecutionFactory;
import org.apache.jena.query.QueryFactory;
import org.apache.jena.query.QuerySolution;
import org.apache.jena.query.ResultSet;
import org.apache.jena.rdf.model.Literal;
import org.apache.jena.rdf.model.Model;
import org.apache.jena.rdf.model.ModelFactory;
import org.apache.jena.riot.Lang;
import org.apache.jena.riot.RDFDataMgr;
import org.apache.jena.update.UpdateAction;
import org.springframework.stereotype.Service;

import tim10.backend.cbbr.CBRDTO;

@Service
public class RDFService {
	
	public List<CBRDTO> getAll() {
		Model model = loadModel();
		List<CBRDTO> attacks = new ArrayList<CBRDTO>();
		
		String queryString = ""
				+ "PREFIX attacks: <http://www.ftn.uns.ac.rs/iz/team10#> "
				+ "SELECT * "
				+ "WHERE {"
				+ "    ?attack a attacks:Attack; "
				+ "        attacks:name ?name; "
				+ "        attacks:severity ?severity; "
				+ "        attacks:prerequisits ?prerequisits; "
				+ "        attacks:likelihood ?likelihood ."
				+ "}";
		
		Query query = QueryFactory.create(queryString);
		QueryExecution qexec = QueryExecutionFactory.create(query, model);
		ResultSet results = qexec.execSelect();
		
		while (results.hasNext()) {
			QuerySolution solution = results.nextSolution() ;
			attacks.add(new CBRDTO(
					solution.getLiteral("name").toString(),
					solution.getLiteral("likelihood").toString(),
					solution.getLiteral("severity").toString(),
					solution.getLiteral("prerequisits").toString()
					));
		}
		
		
		return attacks;
	}

	public boolean insert(CBRDTO dto) {
		Model model = loadModel();
		
		if (existsByName(dto.getAttackName())) {
			return false;
		}
		
		String insertString = ""
				+ "PREFIX attacks: <http://www.ftn.uns.ac.rs/iz/team10#> "
				+ "INSERT DATA {"
				+ "    attacks:" + dto.getAttackName().replaceAll("\\s+","") + " a attacks:Attack; "
				+ "    attacks:severity \"" + dto.getTypicalSeverity() + "\"; "
				+ "    attacks:likelihood \"" + dto.getLikelihoodOfAttack() + "\"; "
				+ "    attacks:name \"" + dto.getAttackName() + "\"; "
				+ "    attacks:prerequisits \"" + dto.getPrerequisites() + "\". "
				+ "}";
		
		UpdateAction.parseExecute(insertString, model);
		
		
		try {
			saveModel(model);
			return true;
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean delete(String attackName) {
		Model model = loadModel();
		
		String deleteString = ""
				+ "PREFIX attacks: <http://www.ftn.uns.ac.rs/iz/team10#> "
				+ "DELETE WHERE {"
				+ "    ?attack attacks:name" + "\"" + attackName + "\"" + ";"
				+ "        ?property ?value"
				+ "}";
		
		UpdateAction.parseExecute(deleteString, model);
		
		try {
			saveModel(model);
			return true;
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean update(CBRDTO dto, String oldName) {
		Model model = loadModel();
		
		if (!existsByName(oldName)) {
			return false;
		}
		

		if (existsByName(oldName) && !oldName.equals(dto.getAttackName())) {
			if (existsByName(dto.getAttackName()))
				return false;
		}
		
		delete(oldName);
		insert(dto);
		
		return true;
	}
	
	private boolean existsByName(String attackName) {
		Model model = loadModel();
		
		String queryString = ""
				+ "PREFIX attacks: <http://www.ftn.uns.ac.rs/iz/team10#> "
				+ "SELECT ?attack ?name "
				+ "WHERE {"
				+ "    ?attack a attacks:Attack; "
				+ "        attacks:name ?name ."
				+ "}";
		
		Query query = QueryFactory.create(queryString);
		QueryExecution qexec = QueryExecutionFactory.create(query, model);
		ResultSet results = qexec.execSelect();
		
		while (results.hasNext()) {
			QuerySolution solution = results.nextSolution() ;
			Literal literal = solution.getLiteral("name");
			if (literal.getString().equalsIgnoreCase(attackName)) {
				return true;
			}
		}
		
		return false;
	}
	
	private Model loadModel() {
		Model model = ModelFactory.createDefaultModel();
		try {
			InputStream is = new FileInputStream("data/attacks.rdf");
			RDFDataMgr.read(model, is, Lang.RDFXML);
			is.close();
			return model;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}	
	
	private void saveModel(Model model) throws FileNotFoundException {
		OutputStream outputStream = new FileOutputStream("data/attacks.rdf");
		model.write(outputStream);
	}
}
