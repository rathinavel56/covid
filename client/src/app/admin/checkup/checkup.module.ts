
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { CheckupRoutingModule } from './checkup-routing.module';
import { CheckupComponent } from './checkup.component';
import { LanguageTranslationModule } from '../../shared/modules/language-translation/language-translation.module';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { UserService } from '../../api/services/user.service';
@NgModule({
    declarations: [CheckupComponent],
    imports: [
        CommonModule,
        CheckupRoutingModule,
        LanguageTranslationModule,
        FormsModule,
        ReactiveFormsModule
    ],
    providers: [UserService]
})
export class CheckupModule {}
