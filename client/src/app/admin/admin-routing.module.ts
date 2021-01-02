
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
                path: 'change_password',
                loadChildren: () =>
                    import('./passwordchanged/passwordchanged.module').then(
                        (m) => m.PasswordchangedModule
                    )
            },
            {
                path: 'employee',
                loadChildren: () =>
                    import('./employee/employee.module').then(
                        (m) => m.EmployeeModule
                    )
            },
            {
                path: 'employeehistory',
                loadChildren: () =>
                    import('./employeehistory/employeehistory.module').then(
                        (m) => m.EmployeeHistoryModule
                    )
            },
            {
                path: 'feedback',
                loadChildren: () =>
                    import('./feedback/feedback.module').then(
                        (m) => m.FeedbackModule
                    )
            },
            {
                path: 'book',
                loadChildren: () =>
                    import('./book/book.module').then(
                        (m) => m.BookModule
                    )
            },
            {
                path: 'employeeprofile',
                loadChildren: () =>
                    import('./employeeprofile/employeeprofile.module').then(
                        (m) => m.EmployeeProfileModule
                    )
            },
            {
                path: 'messages',
                loadChildren: () =>
                    import('./message/message.module').then(
                        (m) => m.MessageModule
                    )
            },
            {
                path: 'quarantine',
                loadChildren: () =>
                    import('./quarantine/quarantine.module').then(
                        (m) => m.QuarantineModule
                    )
            },
            {
                path: 'test',
                loadChildren: () =>
                    import('./test/test.module').then(
                        (m) => m.TestModule
                    )
            },
            {
                path: 'checkup',
                loadChildren: () =>
                    import('./checkup/checkup.module').then(
                        (m) => m.CheckupModule
                    )
            },
            {
                path: 'time_slot',
                loadChildren: () =>
                    import('./time_slot/time_slot.module').then(
                        (m) => m.TimeSlotModule
                    )
            },
            {
                path: 'custom_time_slot',
                loadChildren: () =>
                    import('./custom_time_slot/custom_time_slot.module').then(
                        (m) => m.CustomTimeSlotModule
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
