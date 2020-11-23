
import { Component, OnInit } from '@angular/core';
import { routerTransition } from '../../router.animations';

@Component({
    selector: 'app-testing-center',
    templateUrl: './testing_center.component.html',
    styleUrls: ['./testing_center.component.scss'],
    animations: [routerTransition()]
})
export class TestingCenterComponent implements OnInit {
    public alerts: Array<any> = [];

    constructor() {}

    ngOnInit() {}
}
