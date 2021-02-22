
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { TestRoutingModule } from './test-routing.module';
import { TestComponent } from './test.component';
import { LanguageTranslationModule } from '../../shared/modules/language-translation/language-translation.module';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { UserService } from '../../api/services/user.service';
import { SharedCommonModule } from '../../shared-common/shared-common.module';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
@NgModule({
    declarations: [TestComponent],
    imports: [
        CommonModule,
        TestRoutingModule,
        LanguageTranslationModule,
        FormsModule,
        ReactiveFormsModule,
        SharedCommonModule,
        NgbModule
    ],
    providers: [UserService]
})
export class TestModule {}
