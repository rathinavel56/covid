
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ToastService } from '../../api/services/toast-service';
import { UserService } from '../../api/services/user.service';

@Component({
    selector: 'app-test',
    templateUrl: './test.component.html',
    styleUrls: ['./test.component.scss']
})
export class TestComponent implements OnInit {
    public activities: any;
    public tested: any;
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
        this.tested = [];
        this.userService.getActivity()
        .subscribe((response) => {
            this.activities = response;
            this.toastService.clearLoading();
        });
    }
    
    getTested() {
        this.toastService.showLoading();
        this.activities = [];
        this.tested = [];
        this.userService.getTested()
        .subscribe((response) => {
            this.tested = response;
            this.toastService.clearLoading();
        });
    }
}
