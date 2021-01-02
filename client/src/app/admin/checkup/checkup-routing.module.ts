
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { CheckupComponent } from './checkup.component';

const routes: Routes = [
    {
        path: '',
        component: CheckupComponent
    }
];

@NgModule({
    imports: [RouterModule.forChild(routes)],
    exports: [RouterModule]
})
export class CheckupRoutingModule {}
