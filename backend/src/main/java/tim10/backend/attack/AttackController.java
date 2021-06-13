package tim10.backend.attack;

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
    private AttackService attackService;

    @PostMapping
    public ResponseEntity predictAttackType(@RequestBody AttackDTO attackDTO){
        attackService.predictAttackType(attackDTO);
        return ResponseEntity.ok().build();
    }
}
