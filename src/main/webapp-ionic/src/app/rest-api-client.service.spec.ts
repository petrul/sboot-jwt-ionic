import { TestBed } from '@angular/core/testing';

import { RestApiClientService } from './rest-api-client.service';

import { environment } from 'environments/environment';

describe('RestApiClientService', () => {
  let service: RestApiClientService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(RestApiClientService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
