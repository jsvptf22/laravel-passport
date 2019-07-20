import { TestBed } from '@angular/core/testing';

import { ClientVerificationService } from './client-verification.service';

describe('ClientVerificationService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: ClientVerificationService = TestBed.get(ClientVerificationService);
    expect(service).toBeTruthy();
  });
});
