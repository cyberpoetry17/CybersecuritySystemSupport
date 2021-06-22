import { HttpClient } from "@angular/common/http";
import { Injectable } from "@angular/core";
import { Observable } from "rxjs";
import { cbrModel } from "../model/cbrModel.model";
import { VulnerabilityMetrics } from "../model/vulnerability-metrics.model";

@Injectable({
    providedIn: 'root'
  })
  export class CbrService {
  
    constructor(private _http: HttpClient) { }
  
    calculateSimilarity(cbrModel: cbrModel): Observable<any> {
      return this._http.post<any>("http://localhost:8080/cbr/forcase/", cbrModel)
    }

    getMitigations(desc: string): Observable<any>{
      return this._http.get<any>("http://localhost:8080/prolog/getmitigations/"+desc)
    }

  }