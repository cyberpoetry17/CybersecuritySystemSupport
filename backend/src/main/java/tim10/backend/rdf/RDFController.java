package tim10.backend.rdf;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import tim10.backend.cbbr.CBRApplication;
import tim10.backend.cbbr.CBRDTO;

@RestController
@RequestMapping(value = "/api/rdf")
public class RDFController {

	@Autowired
	private RDFService rdfService;
	@Autowired
	private CBRApplication cbrService;
	
	
	@PostMapping(value = "")
	public ResponseEntity<?> calculateVulnerability(@RequestBody CBRDTO dto) {
		if (rdfService.insert(dto)) {
			cbrService.addNew(dto);
			return new ResponseEntity<>(null, HttpStatus.OK);
		}
		return new ResponseEntity<>(null, HttpStatus.BAD_REQUEST);
	}
	
	@DeleteMapping(value = "/{attackName}")
	public ResponseEntity<?> calculateVulnerability(@PathVariable String attackName) {
		if (rdfService.delete(attackName)) {
			cbrService.remove(attackName);
			return new ResponseEntity<>(null, HttpStatus.OK);
		}
		return new ResponseEntity<>(null, HttpStatus.BAD_REQUEST);
	}
	
	@PutMapping(value = "/{oldName}")
	public ResponseEntity<?> calculateVulnerability(@RequestBody CBRDTO dto, @PathVariable String oldName) {
		if (rdfService.update(dto, oldName)) {
			cbrService.remove(oldName);
			cbrService.addNew(dto);
			return new ResponseEntity<>(null, HttpStatus.OK);
		}
		return new ResponseEntity<>(null, HttpStatus.BAD_REQUEST);
	}
}
