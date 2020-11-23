
import { Component, OnInit } from '@angular/core';
import { routerTransition } from '../../router.animations';

@Component({
    selector: 'app-custom-time-slot',
    templateUrl: './custom_time_slot.component.html',
    styleUrls: ['./custom_time_slot.component.scss'],
    animations: [routerTransition()]
})
export class CustomTimeSlotComponent implements OnInit {
    public alerts: Array<any> = [];

    constructor() {}

    ngOnInit() {}
}
