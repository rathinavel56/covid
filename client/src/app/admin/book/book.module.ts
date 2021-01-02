
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { BookRoutingModule } from './book-routing.module';
import { BookComponent } from './book.component';
import { LanguageTranslationModule } from '../../shared/modules/language-translation/language-translation.module';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { UserService } from '../../api/services/user.service';
@NgModule({
    declarations: [BookComponent],
    imports: [
        CommonModule,
        BookRoutingModule,
        LanguageTranslationModule,
        FormsModule,
        ReactiveFormsModule
    ],
    providers: [UserService]
})
export class BookModule {}
