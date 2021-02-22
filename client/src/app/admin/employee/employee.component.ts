
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ToastService } from '../../api/services/toast-service';
import { UserService } from '../../api/services/user.service';

@Component({
    selector: 'app-employee',
    templateUrl: './employee.component.html',
    styleUrls: ['./employee.component.scss']
})
export class EmployeeComponent implements OnInit {
    public users: any;
    public metaData: any;
    public settings: any;
    public page = 1;
    public previousPage: any;
    public type: any = 'All';
    public status: any = 'Untested';
    constructor(
        public router: Router,
        private formBuilder: FormBuilder,
        private toastService: ToastService,
        private userService: UserService
    ) {}

    ngOnInit(): void {
        this.getUsers(this.type, null);
    }

    getUsers(typeData, status) {
        if (typeData) {
            this.type = typeData;
        }
        if (status) {
            this.status = status;
        }    
        this.toastService.showLoading();
        this.userService.getUserAlls({
            type: this.type,
            status: this.status
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
            this.getUsers(this.type, this.status);
        }
    }
}
