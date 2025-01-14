import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css',
})
export class AppComponent {
  message: string = '';

  constructor(private http: HttpClient) {
    this.http.get<{ message: string }>('http://localhost:5000/api/message').subscribe(data => {
      this.message = data.message;
    });
  }
}
