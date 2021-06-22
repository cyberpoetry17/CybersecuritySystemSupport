package tim10.backend.prolog;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/prolog")
public class PrologController {
	@Autowired
    private PrologService prolog;

    @GetMapping(value = "/getmitigations/{attackName}")
    public ResponseEntity<?> forCase(@PathVariable String attackName){
        return new ResponseEntity<>(prolog.getMitigations(attackName),HttpStatus.OK);
    }
}
