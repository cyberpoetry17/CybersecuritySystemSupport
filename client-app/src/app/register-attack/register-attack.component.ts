import { Component, OnInit } from '@angular/core';
import { Attack } from '../model/attack.model';
import { Duration } from '../model/duration.enum';
import { AttackService } from '../service/attack.service';

@Component({
  selector: 'app-register-attack',
  templateUrl: './register-attack.component.html',
  styleUrls: ['./register-attack.component.css']
})
export class RegisterAttackComponent implements OnInit {

  attack = new Attack();
  durations = this.enumSelector(Duration);

  constructor(private attackService: AttackService) { }

  ngOnInit(): void {
  }

  predict() {
    this.attackService.predictAttackType(this.attack).subscribe((data) => {
      console.log(data);
    })
  }

  enumSelector(definition:any) {
    return Object.keys(definition)
      .map(key => ({ value: definition[key], title: key }));
  }


  isFormValid(){
      return this.attack.isValid();
  }



}
