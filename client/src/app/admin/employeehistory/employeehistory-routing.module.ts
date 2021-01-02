
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { EmployeeHistoryComponent } from './employeehistory.component';

const routes: Routes = [
    {
        path: '',
        component: EmployeeHistoryComponent
    }
];

@NgModule({
    imports: [RouterModule.forChild(routes)],
    exports: [RouterModule]
})
export class EmployeeHistoryRoutingModule {}
