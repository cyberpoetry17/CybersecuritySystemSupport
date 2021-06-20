package tim10.backend.bayes;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "api/attack")
public class AttackController {

    @Autowired
    private BayesProbabilityCalculator calculator;

    @PostMapping
    public ResponseEntity predictAttackType(@RequestBody AttackDTO attackDTO){
        return ResponseEntity.ok(calculator.calculateProbabilities(attackDTO));
    }
}
