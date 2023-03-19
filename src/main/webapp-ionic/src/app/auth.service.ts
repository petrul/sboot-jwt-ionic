import { Injectable } from '@angular/core';
import { Global } from './global'
import { RestApiClientService } from './rest-api-client.service';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  public jwt: string | null = null;

  constructor(private global: Global, private apiClient: RestApiClientService) {}

  public isAuthenticated() {
    return this.jwt != null;
  }

  

}
