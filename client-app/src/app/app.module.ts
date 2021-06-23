import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { CalculatorComponent } from './calculator/calculator.component';
import { RegisterAttackComponent } from './register-attack/register-attack.component';
import { MatButtonToggleModule } from '@angular/material/button-toggle';
import { MatGridListModule } from '@angular/material/grid-list';
import { MatDividerModule } from '@angular/material/divider';
import {MatCardModule} from '@angular/material/card';
import { FormsModule } from '@angular/forms';
import { MatButtonModule } from '@angular/material/button';
import { HttpClientModule } from '@angular/common/http';
import {MatInputModule} from '@angular/material/input';
import {MatDatepickerModule} from '@angular/material/datepicker';
import { MatNativeDateModule } from '@angular/material/core';
import {MatListModule} from '@angular/material/list';
import { CbrComponent } from './cbr/cbr.component';
import { RealRegisterAttackComponent } from './real-register-attack/real-register-attack.component';





@NgModule({
  declarations: [
    AppComponent,
    CalculatorComponent,
    RegisterAttackComponent,
    CbrComponent,
    RealRegisterAttackComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    MatButtonToggleModule,
    MatGridListModule,
    MatDividerModule,
    FormsModule,
    MatButtonModule,
    HttpClientModule,
    MatCardModule,
    MatInputModule,
    MatNativeDateModule,
    MatDatepickerModule,
    MatListModule
  ],
  providers: [MatDatepickerModule],
  bootstrap: [AppComponent]
})
export class AppModule { }
