import { Component, OnInit } from '@angular/core';
import { TestBed } from '@angular/core/testing';
import { VulnerabilityMetrics } from '../model/vulnerability-metrics.model';
import { CalculatorService } from '../service/calculator.service';

@Component({
  selector: 'app-calculator',
  templateUrl: './calculator.component.html',
  styleUrls: ['./calculator.component.css']
})
export class CalculatorComponent implements OnInit {

  constructor(private calculatorService: CalculatorService) { }
  
  ngOnInit(): void {
  }

  vulnerabilityMetrics = new VulnerabilityMetrics();
  score: number | undefined;

  submit(): void {
    this.calculatorService.calculateVulnerabilityScore(this.vulnerabilityMetrics).subscribe(data => {
      this.score = data;
    },
    err => {
      console.log(err.error);
    })
  }

  validate(): boolean {
    return this.vulnerabilityMetrics.accessComplexity != null && this.vulnerabilityMetrics.accessVector != null &&
            this.vulnerabilityMetrics.authentication != null && this.vulnerabilityMetrics.confidentialityImpact != null &&
            this.vulnerabilityMetrics.exploitability != null && this.vulnerabilityMetrics.remediationLevel != null &&
            this.vulnerabilityMetrics.reportConfidence != null && this.vulnerabilityMetrics.collateralDamagePotential != null &&
            this.vulnerabilityMetrics.targetDistribution != null;
  }

}
