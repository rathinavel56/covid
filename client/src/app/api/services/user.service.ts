
import { Injectable } from '@angular/core';
import { FormGroup } from '@angular/forms';
import { ApiService } from './api.service';
import { AppConst } from '../../utils/app-const';
import { Observable } from 'rxjs';
import { QueryParam } from '../models/query-param';
import { User } from '../models/user';
import { SocialLogin } from '../models/social-login';

@Injectable()
export class UserService {
    constructor(private apiService: ApiService) {}

    register(registerForm: FormGroup): Observable<User> {
        const register: string = AppConst.SERVER_URL.REGISTER;
        return this.apiService.httpPost(register, registerForm.value);
    }

    login(loginForm: FormGroup): Observable<User> {
        const login: string = AppConst.SERVER_URL.LOGIN;
        return this.apiService.httpPost(login, loginForm.value);
    }

    booking(request: any): Observable<any> {
        const booking: string = AppConst.SERVER_URL.BOOKING;
        return this.apiService.httpPost(booking, request);
    }

    booked(request: any): Observable<any> {
        const booking: string = AppConst.SERVER_URL.BOOKED;
        return this.apiService.httpGet(booking, request);
    }

    bookedDetail(id: any, request: any): Observable<any> {
        const booking: string = AppConst.SERVER_URL.BOOKED + '/' + id;
        return this.apiService.httpPut(booking, request);
    }
    socialLogin(socialLogin: SocialLogin, queryParam: QueryParam): Observable<User> {
        const login: string = AppConst.SERVER_URL.SOCIAL_LOGIN;
        return this.apiService.httpPost(login, socialLogin, queryParam);
    }
    dashboard(): Observable<any> {
        const dashboard: string = AppConst.SERVER_URL.DASHBOARD;
        return this.apiService.httpGet(dashboard);
    }

    suspendOrActivate(id, request: any): Observable<any> {
        return this.apiService.httpPut('/suspend-or-activate/' + id, request);
    }

    update(updateForm: FormGroup): Observable<User> {
        const updateDetail: string = AppConst.SERVER_URL.USER;
        return this.apiService.httpPut(updateDetail, updateForm.value);
    }

    updateImage(image: any): Observable<User> {
        const updateDetail: string = AppConst.SERVER_URL.USER_IMAGE;
        return this.apiService.httpPut(updateDetail, image);
    }

    changePassword(changePasswordForm: FormGroup): Observable<User> {
        const changePassword: string =
            AppConst.SERVER_URL.CHANGEPASSWORD;
        return this.apiService.httpPut(
            changePassword,
            changePasswordForm.value
        );
    }

    forgotPassword(forgotForm: FormGroup): Observable<User> {
        const forgotPassword: string =
            AppConst.SERVER_URL.FORGETPASSWORD;
        return this.apiService.httpPost(forgotPassword, forgotForm.value);
    }

    findById(id: number|string, queryParam: QueryParam): Observable<User> {
        const url: string = AppConst.SERVER_URL.USER + '/' + id;
        return this.apiService.httpGet(url, queryParam);
    }

    getUserAll(): Observable<any> {
        const url: string = AppConst.SERVER_URL.ADMINUSER;
        return this.apiService.httpGet(url, null);
    }

    getUserAlls(request: any): Observable<any> {
        const url: string = AppConst.SERVER_URL.ADMINUSER;
        return this.apiService.httpGet(url, request);
    }

    getActivity(): Observable<any> {
        const url: string = AppConst.SERVER_URL.ACTIVITY;
        return this.apiService.httpGet(url, null);
    }

    getTested(): Observable<any> {
        const url: string = AppConst.SERVER_URL.TESTED;
        return this.apiService.httpGet(url, null);
    }

    updateUser(user: User): Observable<User> {
        const userUrl: string = AppConst.SERVER_URL.USER;
        return this.apiService.httpPut(userUrl, user);
    }

    getAllPages(): Observable<any> {
        const url: string = AppConst.SERVER_URL.PAGES;
        return this.apiService.httpGet(url, null);
    }

    getPageContent(slug: number): Observable<any> {
        const url: string = AppConst.SERVER_URL.PAGES + '/' + slug;
        return this.apiService.httpGet(url, null);
    }

    postFile(request: any, queryParam: QueryParam): Observable<any> {
        const url: string = AppConst.SERVER_URL.ATTACHMENTS;
        return this.apiService.httpPostFile(url, request, queryParam);
    }

    timeSlot(request: any): Observable<any> {
        const url: string = AppConst.SERVER_URL.TIMESLOTS;
        return this.apiService.httpPost(url, request);
    }

    timeSlotDetails(): Observable<any> {
        const url: string = AppConst.SERVER_URL.TIMESLOTS;
        return this.apiService.httpGet(url, null);
    }

    customTimeSlotDetails(queryParam: QueryParam): Observable<any> {
        const url: string = AppConst.SERVER_URL.CUSTOM_TIMESLOTS;
        return this.apiService.httpGet(url, queryParam);
    }

    customTimeSlot(request: any): Observable<any> {
        const url: string = AppConst.SERVER_URL.CUSTOM_TIMESLOTS;
        return this.apiService.httpPost(url, request);
    }

    logout(): Observable<any> {
        const url: string = AppConst.SERVER_URL.LOGOUT;
        return this.apiService.httpGet(url, null);
    }
}
