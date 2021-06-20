import { Component, OnInit } from '@angular/core';
import { Attack } from '../model/attack.model';
import { BayesResult } from '../model/bayesResult.model';
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
  bayesResults : BayesResult[] = [];
  showResults = false;

  constructor(private attackService: AttackService) { }

  ngOnInit(): void {
  }

  predict() {
    this.showResults = false;
    this.attackService.predictAttackType(this.attack).subscribe((data) => {
      this.bayesResults = data;
      this.showResults = true;
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
