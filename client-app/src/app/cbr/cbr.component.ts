import { Component, OnInit } from '@angular/core';
import { cbrModel } from '../model/cbrModel.model';
import { CbrService } from '../service/cbrSim.service';

@Component({
  selector: 'app-cbr',
  templateUrl: './cbr.component.html',
  styleUrls: ['./cbr.component.css']
})
export class CbrComponent implements OnInit {

  constructor(private cbrService:CbrService) { }

  ngOnInit(): void {
  }
  cbrModel = new cbrModel();
  score:any;
  mitigation:any;

  submit(): void {
    this.cbrService.calculateSimilarity(this.cbrModel).subscribe(data => {
      this.score = data;
    },
    err => {
      console.log(err.error);
    })
  }

  validate(): boolean {
    return this.cbrModel.attackName != null && this.cbrModel.likelihoodOfAttack != null && this.cbrModel.typicalSeverity != null && this.cbrModel.prerequisites != null
  }

  getMitigations(desc: any): void {
    console.log("starting ...")
    this.cbrService.getMitigations(desc).subscribe(data=>{
      this.mitigation = data;
      alert("Mitigations: " + this.mitigation)
    })
  }

}