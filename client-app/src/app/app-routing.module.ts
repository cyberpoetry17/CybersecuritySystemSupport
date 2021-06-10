import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { CalculatorComponent } from './calculator/calculator.component';
import { RegisterAttackComponent } from './register-attack/register-attack.component';

const routes: Routes = [
  {
    path: 'calculator', component: CalculatorComponent
  },
  {
    path: '', component: RegisterAttackComponent
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }