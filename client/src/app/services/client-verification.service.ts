import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from '../../environments/environment';

@Injectable({
  providedIn: 'root'
})
export class ClientVerificationService {
  private clientIdentificator: string;
  private applicationApiRoute: string;

  constructor(
    private http: HttpClient
  ) {
    this.clientIdentificator = environment.clientIdentificator;
    this.applicationApiRoute = environment.applicationApiRoute;
  }

  verify() {
    const route = this.applicationApiRoute + 'clientVerification';
    return this.http.request('POST', route, {
      params: {
        clientIdentificator: this.clientIdentificator
      },
      responseType: 'json'
    });
  }
}
