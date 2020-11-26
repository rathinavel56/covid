
import { Component, OnInit } from '@angular/core';
import { routerTransition } from '../../router.animations';

@Component({
    selector: 'app-custom-time-slot',
    templateUrl: './custom_time_slot.component.html',
    styleUrls: ['./custom_time_slot.component.scss'],
    animations: [routerTransition()]
})
export class CustomTimeSlotComponent implements OnInit {
    timeSlots: any = [];
    schedules: any = [];

    constructor() {}

    ngOnInit() {
        for (let i = 0; i <= 23; i++) {
            let timeValue = (i.toString().length === 1) ? ('0' + i) : i;
            this.timeSlots.push({
                time: timeValue + ':00',
                slot: 0
            });
            this.timeSlots.push({
                time: timeValue + ':30',
                slot: 0
            });
        }
        this.schedules = [{
            type: 0,
            timeSlots: this.timeSlots
        }];
    }
}