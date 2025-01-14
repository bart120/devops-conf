import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: []
})
export class AppComponent {
  message: string = '';

  constructor(private http: HttpClient) {
    this.http.get<{ message: string }>('http://localhost:5000/api/message').subscribe(data => {
      this.message = data.message;
    });
  }
}
