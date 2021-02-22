
import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ToastService } from '../../api/services/toast-service';
import { UserService } from '../../api/services/user.service';

@Component({
    selector: 'app-employeeprofile',
    templateUrl: './employeeprofile.component.html',
    styleUrls: ['./employeeprofile.component.scss']
})
export class EmployeeProfileComponent implements OnInit {
    public id: any;
    public user: any;
    public syst: any = [];
    public created_at: any = '';
    constructor(
        public router: Router,
        private activatedRoute: ActivatedRoute,
        private formBuilder: FormBuilder,
        private toastService: ToastService,
        private userService: UserService
    ) {}

    ngOnInit(): void {
        this.activatedRoute.queryParams.subscribe(params => {
            this.id = params['id'];
            this.getUserDetails();
        });
    }

    getUserDetails() {
        this.toastService.showLoading();
        this.userService.findById(this.id, null)
            .subscribe((response) => {
                this.user = response.data;
                if (this.user.daily_test) {
                    this.created_at = this.user.daily_test.created_at ? this.user.daily_test.created_at.split(' ') : '';
                    this.created_at = this.created_at[0];
                    this.user.daily_test.symptoms.forEach(e => {
                        this.syst.push(e.symptom.name);    
                    });                    
                }
                this.toastService.clearLoading();
            });
    }
}
