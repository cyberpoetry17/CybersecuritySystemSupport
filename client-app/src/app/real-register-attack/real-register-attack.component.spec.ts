import { ComponentFixture, TestBed } from '@angular/core/testing';

import { RealRegisterAttackComponent } from './real-register-attack.component';

describe('RealRegisterAttackComponent', () => {
  let component: RealRegisterAttackComponent;
  let fixture: ComponentFixture<RealRegisterAttackComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ RealRegisterAttackComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(RealRegisterAttackComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
