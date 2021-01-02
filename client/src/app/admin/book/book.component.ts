
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ToastService } from '../../api/services/toast-service';
import { UserService } from '../../api/services/user.service';

@Component({
    selector: 'app-book',
    templateUrl: './book.component.html',
    styleUrls: ['./book.component.scss']
})
export class BookComponent implements OnInit {
    public changedSuccess: boolean;
    constructor(
        public router: Router,
        private formBuilder: FormBuilder,
        private toastService: ToastService,
        private userService: UserService
    ) {}

    ngOnInit(): void {
    }
}
