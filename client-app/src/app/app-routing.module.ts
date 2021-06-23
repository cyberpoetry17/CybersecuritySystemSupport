import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { CalculatorComponent } from './calculator/calculator.component';
import { CbrComponent } from './cbr/cbr.component';
import { RealRegisterAttackComponent } from './real-register-attack/real-register-attack.component';
import { RegisterAttackComponent } from './register-attack/register-attack.component';

const routes: Routes = [
  {
    path: 'calculator', component: CalculatorComponent
  },
  {
    path: 'bayes', component: RegisterAttackComponent
  },
  {
    path:'cbr',component: CbrComponent
  },
  {
    path:'', component: RealRegisterAttackComponent
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
