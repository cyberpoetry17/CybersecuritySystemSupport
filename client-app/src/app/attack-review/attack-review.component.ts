import { Component, OnInit } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { EditAttackDialogComponent } from '../edit-attack-dialog/edit-attack-dialog.component';
import { cbrModel } from '../model/cbrModel.model';
import { AttackService } from '../service/attack.service';

@Component({
  selector: 'app-attack-review',
  templateUrl: './attack-review.component.html',
  styleUrls: ['./attack-review.component.css']
})
export class AttackReviewComponent implements OnInit {

  constructor(private attackService: AttackService, private dialog: MatDialog) { }

  attacks: Array<cbrModel> | undefined;

  ngOnInit(): void {
    this.getAttacks();
  }

  getAttacks() {
    this.attackService.getRegisteredAttacks().subscribe(data => {
      this.attacks = data;
    },
    err => {
      console.log(err.error);
    })
  }

  splitPrerequisits(attack: cbrModel) {
    return attack.prerequisites.split(';');
  }

  editAttack(attack: cbrModel) {
    this.dialog.open(EditAttackDialogComponent, {
      data: {
        attack: attack
      }
    })
  }

}
