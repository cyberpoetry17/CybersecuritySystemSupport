import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AttackReviewComponent } from './attack-review.component';

describe('AttackReviewComponent', () => {
  let component: AttackReviewComponent;
  let fixture: ComponentFixture<AttackReviewComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AttackReviewComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(AttackReviewComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
