import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Attack } from '../model/attack.model';
import { BayesResult } from '../model/bayesResult.model';
import { cbrModel } from '../model/cbrModel.model';

@Injectable({
  providedIn: 'root'
})
export class AttackService {

  constructor(private http: HttpClient) { }

  predictAttackType(attackInfo: Attack): Observable<BayesResult[]> {
    return this.http.post<BayesResult[]>('http://localhost:8080/api/attack/', attackInfo);
  }

  getRegisteredAttacks(): Observable<cbrModel[]> {
    return this.http.get<cbrModel[]>('http://localhost:8080/api/rdf');
  }

  editAttack(attack: cbrModel, oldAttackName: string): Observable<any> {
    return this.http.post('http://localhost:8080/api/rdf/' + oldAttackName, attack);
  }
}
