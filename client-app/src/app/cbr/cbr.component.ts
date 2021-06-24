import { stringify } from '@angular/compiler/src/util';
import { Component, OnInit } from '@angular/core';
import { cbrModel } from '../model/cbrModel.model';
import { CbrService } from '../service/cbrSim.service';

@Component({
  selector: 'app-cbr',
  templateUrl: './cbr.component.html',
  styleUrls: ['./cbr.component.css']
})
export class CbrComponent implements OnInit {

  constructor(private cbrService: CbrService) { }

  ngOnInit(): void {
  }
  cbrModel = new cbrModel();
  score: any;
  mitigations: any;

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
    this.cbrService.getMitigations(desc).subscribe(data => {
      if (data.length == 0) {
        alert('No mitigations found for this attack.')
        this.mitigations = null;
      } else {
        this.mitigations = data;
      }
    })
  }

  splitMitigations(mitig: string) {
    console.log(mitig)
    mitig = mitig.replace(/_/g, " ");
    console.log(mitig)
    let lines = mitig.split(",");
    lines.pop();
    let retval = [];
    for (let line of lines) {
      console.log(line)
      retval.push(line.charAt(0).toUpperCase() + line.slice(1))
    }
    return retval;
  }

}
