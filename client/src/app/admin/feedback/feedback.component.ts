
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ToastService } from '../../api/services/toast-service';
import { UserService } from '../../api/services/user.service';
declare const $: any;

@Component({
    selector: 'app-feedback',
    templateUrl: './feedback.component.html',
    styleUrls: ['./feedback.component.scss']
})
export class FeedbackComponent implements OnInit {
    public changedSuccess: boolean;
    constructor(
        public router: Router,
        private formBuilder: FormBuilder,
        private toastService: ToastService,
        private userService: UserService
    ) { }

    ngOnInit(): void {
        $(document).ready(function () {
            $("#replyBtn").on("click", function () {
                $('.clsReplyText').removeClass('d-none');
                $('.clsReply').addClass('d-none');
            });

            $("#sentBtn").on("click", function () {
                $('.clsReplyMedia').removeClass('d-none');
                $('.clsReplyText').addClass('d-none');
            });
        });
    }
}
