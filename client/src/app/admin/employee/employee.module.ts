
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { EmployeeRoutingModule } from './employee-routing.module';
import { EmployeeComponent } from './employee.component';
import { LanguageTranslationModule } from '../../shared/modules/language-translation/language-translation.module';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { UserService } from '../../api/services/user.service';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { SharedCommonModule } from '../../shared-common/shared-common.module';
@NgModule({
    declarations: [
        EmployeeComponent
    ],
    imports: [
        CommonModule,
        EmployeeRoutingModule,
        LanguageTranslationModule,
        FormsModule,
        ReactiveFormsModule,
        NgbModule,
        SharedCommonModule
    ],
    providers: [UserService]
})
export class EmployeeModule {}
