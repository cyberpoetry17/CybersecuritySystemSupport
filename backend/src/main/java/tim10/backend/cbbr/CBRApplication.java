package tim10.backend.cbbr;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Random;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import es.ucm.fdi.gaia.jcolibri.casebase.LinealCaseBase;
import es.ucm.fdi.gaia.jcolibri.cbraplications.StandardCBRApplication;
import es.ucm.fdi.gaia.jcolibri.cbrcore.Attribute;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRCase;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRCaseBase;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRQuery;
import es.ucm.fdi.gaia.jcolibri.cbrcore.Connector;
import es.ucm.fdi.gaia.jcolibri.exception.ExecutionException;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.RetrievalResult;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.NNConfig;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.NNScoringMethod;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.global.Average;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.local.MaxString;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.selection.SelectCases;
import es.ucm.fdi.gaia.jcolibri.util.FileIO;

@Service
public class CBRApplication implements StandardCBRApplication{
	Connector _connector;  /** Connector object */
	CBRCaseBase _caseBase;  /** CaseBase object */
	ArrayList<RetrievalResultDTO> frontList;
	NNConfig simConfig;  /** KNN configuration */
	
	@Override
	public void configure() throws ExecutionException {
		_connector =  new CsvConnector();
		_caseBase = new LinealCaseBase();
		
		simConfig = new NNConfig();
		simConfig.setDescriptionSimFunction(new Average());
		
		simConfig.addMapping(new Attribute("attackName",CBRModel.class), new MaxString());
		simConfig.addMapping(new Attribute("likelihoodOfAttack",CBRModel.class), new MaxString());
		simConfig.addMapping(new Attribute("typicalSeverity",CBRModel.class), new MaxString());
		simConfig.addMapping(new Attribute("prerequisites",CBRModel.class), new MaxString());
		
		
	}

	@Override
	public CBRCaseBase preCycle() throws ExecutionException {
		_caseBase.init(_connector);
		frontList = new ArrayList<RetrievalResultDTO>();
		java.util.Collection<CBRCase> cases = _caseBase.getCases();
//		for (CBRCase c: cases)
//			System.out.println(c.getDescription());
		return _caseBase;
	}

	@Override
	public void cycle(CBRQuery query) throws ExecutionException {
		Collection<RetrievalResult> eval = NNScoringMethod.evaluateSimilarity(_caseBase.getCases(), query, simConfig);
		eval = SelectCases.selectTopKRR(eval, 5);
		System.out.println("Retrieved cases:");
		for (RetrievalResult nse : eval) {
			System.out.println(nse.get_case().getDescription() + " -> " + nse.getEval());
			frontList.add(new RetrievalResultDTO(nse.get_case().getDescription().toString().substring(10).replace("]", ""),nse.getEval()));
		}
	}
	
	public ArrayList<RetrievalResultDTO> getResult(CBRDTO dto){
		try {
			this.configure();
			this.preCycle();
			CBRQuery query = new CBRQuery();
			CBRModel model = new CBRModel();
			model.setAttackName(dto.getAttackName());
			model.setLikelihoodOfAttack(dto.getLikelihoodOfAttack());
			model.setTypicalSeverity(dto.getTypicalSeverity());
			model.setPrerequisites(dto.getPrerequisites());
			query.setDescription(model);
			addNew(dto);
			this.cycle(query);
			this.postCycle();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return frontList;
	}

	public void addNew(CBRDTO dto) {
		try {
			File read = new File("src/data/base2.csv");
			BufferedReader r = new BufferedReader(new FileReader(read));
			String st;
			StringBuilder sb = new StringBuilder();
			String newone="";
			
			while((st=r.readLine()) != null) {
				newone = (sb).append(st).append("\n").toString();
			}
			
			FileWriter file = new FileWriter("src/data/base2.csv");
			BufferedWriter writter = new BufferedWriter(file);
		
			writter.append(newone+"!"+","+"\""+dto.getAttackName()+"\""+","+dto.getLikelihoodOfAttack()+","+dto.getTypicalSeverity()+","+"\""+dto.getPrerequisites()+"\""+","+"\"\"");
			writter.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void remove(String attackName) {
		try {
			File read = new File("src/data/base2.csv");
			BufferedReader r = new BufferedReader(new FileReader(read));
			String st;
			StringBuilder sb = new StringBuilder();
			String newone="";
			
			while((st=r.readLine()) != null) {
				if (StringUtils.strip(st.split(",")[1], "\"").equals(attackName))
					continue;				
				newone = (sb).append(st).append("\n").toString();
			}
			
			FileWriter file = new FileWriter("src/data/base2.csv");
			BufferedWriter writter = new BufferedWriter(file);
			
			writter.append(newone);
			writter.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public void postCycle() throws ExecutionException {
		// TODO Auto-generated method stub
		
	}
	
}
