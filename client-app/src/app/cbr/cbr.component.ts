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

  submit(): void {
    this.cbrService.calculateSimilarity(this.cbrModel).subscribe(data => {
      this.score = data;
    },
    err => {
      console.log(err.error);
    })
  }
}
