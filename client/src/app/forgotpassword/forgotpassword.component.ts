
import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ToastService } from '../api/services/toast-service';
import { UserService } from '../api/services/user.service';
import { Router } from '@angular/router';

@Component({
    selector: 'app-forgotpassword',
    templateUrl: './forgotpassword.component.html',
    styleUrls: ['./forgotpassword.component.scss']
})
export class ForgotpasswordComponent implements OnInit {
    public isSubmitted: boolean;
    public forgotpasswordForm: FormGroup;
    constructor(
        public router: Router,
        private formBuilder: FormBuilder,
        private toastService: ToastService,
        private userService: UserService
    ) {}

    ngOnInit(): void {
        this.forgotpasswordForm = this.formBuilder.group({
            email: ['', [Validators.required, Validators.email]]
        });
    }

    get f() {
        return this.forgotpasswordForm.controls;
    }

    onSubmit() {
        this.isSubmitted = true;
        if (this.forgotpasswordForm.invalid) {
            return;
        }
        this.toastService.showLoading();
        this.userService
            .forgotPassword(this.forgotpasswordForm)
            .subscribe((data) => {
                this.isSubmitted = false;
                this.toastService.clearLoading();
                if (data.error.code) {
                    this.toastService.error(data.error.message);
                } else {
                    this.toastService.success(data.error.message);
                    this.router.navigate(['/home']);
                }
            });
    }
}
