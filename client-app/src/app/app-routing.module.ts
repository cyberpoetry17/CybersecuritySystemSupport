import { NgModule } from '@angular/core';
import { NavigationCancel, RouterModule, Routes } from '@angular/router';
import { AttackReviewComponent } from './attack-review/attack-review.component';

import { CalculatorComponent } from './calculator/calculator.component';
import { CbrComponent } from './cbr/cbr.component';
import { NavigationComponent } from './navigation/navigation.component';
import { RealRegisterAttackComponent } from './real-register-attack/real-register-attack.component';
import { RegisterAttackComponent } from './register-attack/register-attack.component';

const routes: Routes = [
  {
    path: '', component: NavigationComponent,
    children: [
      { path: '', component: RealRegisterAttackComponent },
      { path: 'cbr', component: CbrComponent },
      { path: 'bayes', component: RegisterAttackComponent },
      { path: 'calculator', component: CalculatorComponent },
      { path: 'review', component: AttackReviewComponent }
    ]
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
