
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
    public booking: any;
    public metaData: any;
    public settings: any;
    public page = 1;
    public previousPage: any;
    public statuss: any = [{
        id: 0,
        name: 'Inprogress'
    },{
        id: 1,
        name: 'Negative'
    },{
        id: 2,
        name: 'Positive'
    },{
        id: 3,
        name: 'Vaccinated'
    }];
    qrcodeDetail: any = '';
    constructor(
        public router: Router,
        private formBuilder: FormBuilder,
        private toastService: ToastService,
        private userService: UserService
    ) {}

    ngOnInit(): void {
        this.booked('');
    }

    changeUpdated(book, $event) {
        this.toastService.showLoading();
        this.userService.bookedDetail(book.id, $event)
        .subscribe((response) => {
            this.toastService.success('Successfully Updated....');
            this.toastService.clearLoading();
        });
    }

    booked(qrcode: any) {
        this.toastService.showLoading();
        this.booking = [];
        this.qrcodeDetail = qrcode;
        this.userService.booked({
            qr_code: qrcode
        })
        .subscribe((response) => {
            this.booking = response.data;
            this.metaData = response._metadata;
            this.toastService.clearLoading();
        });
    }
    loadPage(page: number) {
        if (page !== this.previousPage) {
            this.previousPage = page;
            this.booked(this.qrcodeDetail);
        }
    }
}
