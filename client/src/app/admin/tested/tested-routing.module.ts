
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { TestedComponent } from './tested.component';

const routes: Routes = [
    {
        path: '',
        component: TestedComponent
    }
];

@NgModule({
    imports: [RouterModule.forChild(routes)],
    exports: [RouterModule]
})
export class TestedRoutingModule {}
