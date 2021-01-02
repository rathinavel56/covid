
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { QuarantineComponent } from './quarantine.component';

const routes: Routes = [
    {
        path: '',
        component: QuarantineComponent
    }
];

@NgModule({
    imports: [RouterModule.forChild(routes)],
    exports: [RouterModule]
})
export class QuarantineRoutingModule {}
