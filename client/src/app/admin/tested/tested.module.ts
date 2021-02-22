
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { TestedRoutingModule } from './tested-routing.module';
import { TestedComponent } from './tested.component';
import { LanguageTranslationModule } from '../../shared/modules/language-translation/language-translation.module';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { UserService } from '../../api/services/user.service';
import { SharedCommonModule } from '../../shared-common/shared-common.module';
@NgModule({
    declarations: [TestedComponent],
    imports: [
        CommonModule,
        TestedRoutingModule,
        LanguageTranslationModule,
        FormsModule,
        ReactiveFormsModule,
        SharedCommonModule
    ],
    providers: [UserService]
})
export class TestedModule {}
