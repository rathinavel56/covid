
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { QuarantineRoutingModule } from './quarantine-routing.module';
import { QuarantineComponent } from './quarantine.component';
import { LanguageTranslationModule } from '../../shared/modules/language-translation/language-translation.module';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { UserService } from '../../api/services/user.service';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { SharedCommonModule } from '../../shared-common/shared-common.module';
@NgModule({
    declarations: [QuarantineComponent],
    imports: [
        CommonModule,
        QuarantineRoutingModule,
        LanguageTranslationModule,
        FormsModule,
        ReactiveFormsModule,
        NgbModule,
        SharedCommonModule
    ],
    providers: [UserService]
})
export class QuarantineModule {}
