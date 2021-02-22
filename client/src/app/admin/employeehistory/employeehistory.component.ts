
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ToastService } from '../../api/services/toast-service';
import { UserService } from '../../api/services/user.service';

@Component({
    selector: 'app-employeehistory',
    templateUrl: './employeehistory.component.html',
    styleUrls: ['./employeehistory.component.scss']
})
export class EmployeeHistoryComponent implements OnInit {
    public users: any;
    public metaData: any;
    public settings: any;
    public page = 1;
    public previousPage: any;
    constructor(
        public router: Router,
        private formBuilder: FormBuilder,
        private toastService: ToastService,
        private userService: UserService
    ) {}

    ngOnInit(): void {
        this.getUsers();
    }
    getUsers() {
        this.toastService.showLoading();
        this.userService.getUserAlls({
            history: true
        })
        .subscribe((response) => {
            this.users = response.data;
            this.metaData = response._metadata;
            this.toastService.clearLoading();
        });
    }
    loadPage(page: number) {
        if (page !== this.previousPage) {
            this.previousPage = page;
            this.getUsers();
        }
    }
}
