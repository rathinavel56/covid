
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { MessageRoutingModule } from './message-routing.module';
import { MessageComponent } from './message.component';
import { LanguageTranslationModule } from '../../shared/modules/language-translation/language-translation.module';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { UserService } from '../../api/services/user.service';
@NgModule({
    declarations: [MessageComponent],
    imports: [
        CommonModule,
        MessageRoutingModule,
        LanguageTranslationModule,
        FormsModule,
        ReactiveFormsModule
    ],
    providers: [UserService]
})
export class MessageModule {}
