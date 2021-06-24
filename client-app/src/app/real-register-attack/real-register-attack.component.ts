import { Component, OnInit } from '@angular/core';
import { MatSnackBar } from '@angular/material/snack-bar';
import { cbrModel } from '../model/cbrModel.model';
import { CbrService } from '../service/cbrSim.service';

@Component({
  selector: 'app-real-register-attack',
  templateUrl: './real-register-attack.component.html',
  styleUrls: ['./real-register-attack.component.css']
})
export class RealRegisterAttackComponent implements OnInit {

  constructor(private cbrService: CbrService, private snackBar: MatSnackBar) { }

  ngOnInit(): void {
  }
  cbrModel = new cbrModel();

  submit(): void {
    this.cbrService.registerAttack(this.cbrModel).subscribe(() => {
      this.snackBar.open('Attack registered', 'Ok', { duration: 5000 })
    },
      err => {
        this.snackBar.open(err.error, 'Ok', { duration: 5000 })
      })
  }

  validate(): boolean {
    return this.cbrModel.attackName != null && this.cbrModel.likelihoodOfAttack != null && this.cbrModel.typicalSeverity != null && this.cbrModel.prerequisites != null
  }

}
