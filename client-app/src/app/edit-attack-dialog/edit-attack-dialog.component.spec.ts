import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EditAttackDialogComponent } from './edit-attack-dialog.component';

describe('EditAttackDialogComponent', () => {
  let component: EditAttackDialogComponent;
  let fixture: ComponentFixture<EditAttackDialogComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ EditAttackDialogComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(EditAttackDialogComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
