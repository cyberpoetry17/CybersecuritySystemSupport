import { ComponentFixture, TestBed } from '@angular/core/testing';

import { RegisterAttackComponent } from './register-attack.component';

describe('RegisterAttackComponent', () => {
  let component: RegisterAttackComponent;
  let fixture: ComponentFixture<RegisterAttackComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ RegisterAttackComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(RegisterAttackComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
