import { Component, Inject, OnInit } from '@angular/core';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
import { MatSnackBar } from '@angular/material/snack-bar';
import { cbrModel } from '../model/cbrModel.model';
import { AttackService } from '../service/attack.service';

@Component({
  selector: 'app-edit-attack-dialog',
  templateUrl: './edit-attack-dialog.component.html',
  styleUrls: ['./edit-attack-dialog.component.css']
})
export class EditAttackDialogComponent implements OnInit {

  constructor(public dialogRef: MatDialogRef<EditAttackDialogComponent>, private attackService: AttackService, private snackBar: MatSnackBar,
    @Inject(MAT_DIALOG_DATA) public data: { attack: cbrModel }) { }



  oldAttackName: string;
  attack: cbrModel;
  attackCopy: cbrModel;

  ngOnInit(): void {
    this.oldAttackName = this.data.attack.attackName;
    this.attack = this.data.attack;
    this.attackCopy = Object.assign({}, this.data.attack);
  }

  ngOnDestroy(): void {
    this.attack.attackName = this.attackCopy.attackName;
    this.attack.likelihoodOfAttack = this.attackCopy.likelihoodOfAttack;
    this.attack.typicalSeverity = this.attackCopy.typicalSeverity;
    this.attack.prerequisites = this.attackCopy.prerequisites;
  }

  saveAttack() {
    this.attackService.editAttack(this.attack, this.oldAttackName).subscribe(data => {
      this.snackBar.open('Attack updated.', 'Ok', { duration: 5000 });
      this.attackCopy.attackName = this.attack.attackName;
      this.attackCopy.likelihoodOfAttack = this.attack.likelihoodOfAttack;
      this.attackCopy.prerequisites = this.attack.prerequisites;
      this.attackCopy.typicalSeverity = this.attack.typicalSeverity;
      this.dialogRef.close();
    },
      err => {
        this.snackBar.open(err.error, 'Ok', { duration: 5000 });
        this.attack.attackName = this.attackCopy.attackName;
        this.attack.likelihoodOfAttack = this.attackCopy.likelihoodOfAttack;
        this.attack.typicalSeverity = this.attackCopy.typicalSeverity;
        this.attack.prerequisites = this.attackCopy.prerequisites;
      })
  }

  validate() {
    return this.attack.attackName && this.attack.likelihoodOfAttack != null && this.attack.typicalSeverity != null && this.attack.prerequisites;
  }

}
