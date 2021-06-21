import { TestBed } from '@angular/core/testing';

import { CalculatorService } from './calculator.service';
import { CbrService } from './cbrSim.service';

describe('cbrSim', () => {
  let service: CbrService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(CbrService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});