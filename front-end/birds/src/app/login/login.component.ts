import { Component, OnInit } from '@angular/core';
import {Http, Response } from '@angular/http';


@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})

export class LoginComponent implements OnInit {

  constructor(private http: Http) {
   
  }

  // getBirds() {
  // 		this.http.get(this.baseApiUrl).subscribe(response =>
		//   this.birds = response.json()
		// )
  //   console.log(this.birds)
  // }

  ngOnInit() {
  }

}
