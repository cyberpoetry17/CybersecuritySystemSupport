import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Attack } from '../model/attack.model';
import { BayesResult } from '../model/bayesResult.model';

@Injectable({
  providedIn: 'root'
})
export class AttackService {

  constructor(private http: HttpClient) { }

  predictAttackType(attackInfo : Attack): Observable<BayesResult[]>{
    return this.http.post<BayesResult[]>('http://localhost:8080/api/attack/', attackInfo);
  }
}
