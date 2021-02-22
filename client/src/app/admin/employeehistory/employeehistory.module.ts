
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { EmployeeHistoryRoutingModule } from './employeehistory-routing.module';
import { EmployeeHistoryComponent } from './employeehistory.component';
import { LanguageTranslationModule } from '../../shared/modules/language-translation/language-translation.module';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { UserService } from '../../api/services/user.service';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { SharedCommonModule } from '../../shared-common/shared-common.module';
@NgModule({
    declarations: [EmployeeHistoryComponent],
    imports: [
        CommonModule,
        EmployeeHistoryRoutingModule,
        LanguageTranslationModule,
        FormsModule,
        ReactiveFormsModule,
        NgbModule,
        SharedCommonModule
    ],
    providers: [UserService]
})
export class EmployeeHistoryModule {}
