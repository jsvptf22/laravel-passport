import { Component } from '@angular/core';
import { ClientVerificationService } from './services/client-verification.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  title = 'client';

  constructor(
    private clientVerification: ClientVerificationService
  ) {
    this.checkClient();
  }

  checkClient() {
    this.clientVerification.verify().subscribe(response => {
      console.log(response);
    });
  }
}
