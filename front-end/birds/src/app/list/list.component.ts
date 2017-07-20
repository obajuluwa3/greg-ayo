import { Component, OnInit } from '@angular/core';
import {Http, Response } from '@angular/http';

class Bird {
	name: string;
	color: string;
	location: string;
	picture: string;
}

@Component({
  selector: 'app-list',
  templateUrl: './list.component.html',
  styleUrls: ['./list.component.css']
})
export class ListComponent implements OnInit {
	baseApiUrl: string = 'http://172.20.0.160:9292/birds/'
	birds: Bird[] = [];

  	constructor(private http: Http) { 
  	console.log("here") 
 	  this.getBirds();
  	}

  	 getBirds() {
  		this.http.get(this.baseApiUrl).subscribe(response =>
		  this.birds = response.json()
		)
    console.log(this.birds)
  }

  ngOnInit() {
  }

}
