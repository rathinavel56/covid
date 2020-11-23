
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { AdminComponent } from './admin.component';

const routes: Routes = [
    {
        path: '',
        component: AdminComponent,
        children: [
            {
                path: '', redirectTo: 'dashboard', pathMatch: 'prefix'
            },
            {
                path: 'dashboard',
                loadChildren: () =>
                    import('./dashboard/dashboard.module').then(
                        (m) => m.DashboardModule
                    )
            },
            {
                path: 'appointments',
                loadChildren: () =>
                    import('./appointment/appointment.module').then(
                        (m) => m.AppointmentModule
                    )
            },
            {
                path: 'testing_centers',
                loadChildren: () =>
                    import('./dashboard/dashboard.module').then(
                        (m) => m.DashboardModule
                    )
            },
            {
                path: 'time_slot',
                loadChildren: () =>
                    import('./dashboard/dashboard.module').then(
                        (m) => m.DashboardModule
                    )
            },
            {
                path: 'custom_time_slot',
                loadChildren: () =>
                    import('./dashboard/dashboard.module').then(
                        (m) => m.DashboardModule
                    )
            },
            {
                path: 'actions/:api',
                loadChildren: () =>
                    import('./crud/crud.module').then((m) => m.CrudModule)
            },
            {
                path: 'actions/:api/add',
                loadChildren: () =>
                    import('./crud/crud.module').then((m) => m.CrudModule)
            },
            {
                path: 'actions/:api/edit/:id',
                loadChildren: () =>
                    import('./crud/crud.module').then((m) => m.CrudModule)
            },
            {
                path: 'actions/:api/view/:id',
                loadChildren: () =>
                    import('./crud/crud.module').then((m) => m.CrudModule)
            },
            {
                path: 'actions/:api/delete/:id',
                loadChildren: () =>
                    import('./crud/crud.module').then((m) => m.CrudModule)
            }
        ]
    }
];

@NgModule({
    imports: [RouterModule.forChild(routes)],
    exports: [RouterModule]
})
export class AdminRoutingModule {}