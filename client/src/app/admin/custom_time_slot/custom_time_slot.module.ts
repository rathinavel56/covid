
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { CustomTimeSlotRoutingModule } from './custom_time_slot-routing.module';
import { CustomTimeSlotComponent } from './custom_time_slot.component';
@NgModule({
    imports: [
        CommonModule,
        CustomTimeSlotRoutingModule
    ],
    declarations: [CustomTimeSlotComponent]
})
export class CustomTimeSlotModule {}
