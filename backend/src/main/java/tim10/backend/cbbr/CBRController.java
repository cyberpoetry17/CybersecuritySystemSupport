package tim10.backend.cbbr;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/cbr")
public class CBRController {
	
	    @Autowired
	    private CBRApplication app;

	    @PostMapping(value = "/forcase")
	    public ResponseEntity<?> forCase(@RequestBody CBRDTO dto){
	        return new ResponseEntity<>(app.getResult(dto),HttpStatus.OK);
	    }
}
