
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { EmployeeHistoryRoutingModule } from './employeehistory-routing.module';
import { EmployeeHistoryComponent } from './employeehistory.component';
import { LanguageTranslationModule } from '../../shared/modules/language-translation/language-translation.module';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { UserService } from '../../api/services/user.service';
@NgModule({
    declarations: [EmployeeHistoryComponent],
    imports: [
        CommonModule,
        EmployeeHistoryRoutingModule,
        LanguageTranslationModule,
        FormsModule,
        ReactiveFormsModule
    ],
    providers: [UserService]
})
export class EmployeeHistoryModule {}
