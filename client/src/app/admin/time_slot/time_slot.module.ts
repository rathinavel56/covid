
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { TimeSlotRoutingModule } from './time_slot-routing.module';
import { TimeSlotComponent } from './time_slot.component';
@NgModule({
    imports: [
        CommonModule,
        TimeSlotRoutingModule
    ],
    declarations: [TimeSlotComponent]
})
export class TimeSlotModule {}
