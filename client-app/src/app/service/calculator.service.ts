import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { VulnerabilityMetrics } from '../model/vulnerability-metrics.model';
import { Observable } from 'rxjs';


@Injectable({
  providedIn: 'root'
})
export class CalculatorService {

  constructor(private _http: HttpClient) { }

  calculateVulnerabilityScore(vulnerabilityMetrics: VulnerabilityMetrics): Observable<any> {
    return this._http.post<any>("http://localhost:8080/api/calculator/", vulnerabilityMetrics)
  }
}
