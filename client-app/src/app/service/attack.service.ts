import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Attack } from '../model/attack.model';

@Injectable({
  providedIn: 'root'
})
export class AttackService {

  constructor(private http: HttpClient) { }

  predictAttackType(attackInfo : Attack): Observable<any>{
    return this.http.post<any>('http://localhost:8080/api/attack/', attackInfo);
  }
}
