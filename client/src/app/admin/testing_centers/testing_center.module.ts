import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { TestingCenterRoutingModule } from './testing_center-routing.module';
import { TestingCenterComponent } from './testing_center.component';
@NgModule({
    imports: [
        CommonModule,
        TestingCenterComponent
    ],
    declarations: [TestingCenterComponent]
})
export class TestingCenterModule {}
