
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ToastService } from '../../api/services/toast-service';
import { UserService } from '../../api/services/user.service';

@Component({
    selector: 'app-checkup',
    templateUrl: './checkup.component.html',
    styleUrls: ['./checkup.component.scss']
})
export class CheckupComponent implements OnInit {
    public activities: any;
    constructor(
        public router: Router,
        private formBuilder: FormBuilder,
        private toastService: ToastService,
        private userService: UserService
    ) {}

    ngOnInit(): void {
        this.getActivity();
    }

    getActivity() {
        this.toastService.showLoading();
        this.activities = [];
        this.userService.getActivity()
        .subscribe((response) => {
            this.activities = response;
            this.toastService.clearLoading();
        });
    }
}
