package tim10.backend.rdf;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import tim10.backend.cbbr.CBRDTO;

@RestController
@RequestMapping(value = "/api/rdf")
public class RDFController {

	@Autowired
	private RDFService service;
	
	
	@PostMapping(value = "")
	public ResponseEntity<?> calculateVulnerability(@RequestBody CBRDTO dto) {
		if (service.insert(dto)) {
			return new ResponseEntity<>(null, HttpStatus.OK);
		}
		return new ResponseEntity<>(null, HttpStatus.BAD_REQUEST);
	}
}
