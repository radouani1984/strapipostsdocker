import { Component } from '@angular/core';

@Component({
  selector: 'po-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss'],
})
export class AppComponent {
  title = 'posts';
  hello = () => {
    console.log('hello world');
  };
}
