
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { DashboardRoutingModule } from './dashboard-routing.module';
import { DashboardComponent } from './dashboard.component';
import { NotificationComponent } from './components';
import { StatModule } from '../../shared';
import { SharedCommonChartModule } from '../../shared-common/shared-common.chart.module';
import { SharedCommonModule } from '../../shared-common/shared-common.module';
import { UserService } from '../../api/services/user.service';
@NgModule({
    imports: [
        CommonModule,
        DashboardRoutingModule,
        SharedCommonChartModule,
        StatModule,
        SharedCommonModule
    ],
    declarations: [DashboardComponent, NotificationComponent],
    providers: [UserService]
})
export class DashboardModule {}
