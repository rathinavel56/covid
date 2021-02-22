
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { EmployeeProfileRoutingModule } from './employeeprofile-routing.module';
import { EmployeeProfileComponent } from './employeeprofile.component';
import { LanguageTranslationModule } from '../../shared/modules/language-translation/language-translation.module';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { UserService } from '../../api/services/user.service';
import { SharedCommonModule } from '../../shared-common/shared-common.module';
@NgModule({
    declarations: [EmployeeProfileComponent],
    imports: [
        CommonModule,
        EmployeeProfileRoutingModule,
        LanguageTranslationModule,
        FormsModule,
        ReactiveFormsModule,
        SharedCommonModule
    ],
    providers: [UserService]
})
export class EmployeeProfileModule {}
