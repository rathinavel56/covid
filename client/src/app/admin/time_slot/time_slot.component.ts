
import { Component, OnInit } from '@angular/core';
import { routerTransition } from '../../router.animations';

@Component({
    selector: 'app-time-slot',
    templateUrl: './time_slot.component.html',
    styleUrls: ['./time_slot.component.scss'],
    animations: [routerTransition()]
})
export class TimeSlotComponent implements OnInit {
    public alerts: Array<any> = [];

    constructor() {}

    ngOnInit() {}
}
