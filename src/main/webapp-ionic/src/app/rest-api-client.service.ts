import { Injectable } from '@angular/core';
import { environment } from './environments/environment';

@Injectable({
  providedIn: 'root'
})
export class RestApiClientService {

  backendUrl = environment.backendUrl;

  constructor() { }
}
