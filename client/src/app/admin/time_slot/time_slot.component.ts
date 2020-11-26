
import { Component, OnInit } from '@angular/core';
import { routerTransition } from '../../router.animations';

@Component({
    selector: 'app-time-slot',
    templateUrl: './time_slot.component.html',
    styleUrls: ['./time_slot.component.scss'],
    animations: [routerTransition()]
})
export class TimeSlotComponent implements OnInit {
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
            day: 'Sun',
            type: 0,
            timeSlots: this.timeSlots
        },{
            day: 'Mon',
            type: 0,
            timeSlots: this.timeSlots
        },{
            day: 'Tue',
            type: 0,
            timeSlots: this.timeSlots
        },{
            day: 'Wed',
            type: 0,
            timeSlots: this.timeSlots
        },{
            day: 'Thu',
            type: 0,
            timeSlots: this.timeSlots
        },{
            day: 'Fri',
            type: 0,
            timeSlots: this.timeSlots
        },{
            day: 'Sat',
            type: 0,
            timeSlots: this.timeSlots
        }];
    }
}
