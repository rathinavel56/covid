
import { Component, OnInit } from '@angular/core';
import { routerTransition } from '../../router.animations';
import { ToastService } from '../../api/services/toast-service';
import { UserService } from '../../api/services/user.service';
@Component({
    selector: 'app-dashboard',
    templateUrl: './dashboard.component.html',
    styleUrls: ['./dashboard.component.scss'],
    animations: [routerTransition()]
})
export class DashboardComponent implements OnInit {
    public users: any;
    public stats: any;
    public type: any = 'All';
    constructor(
        private toastService: ToastService,
        private userService: UserService) {}

        ngOnInit(): void {
            this.getUsers(this.type);
            this.dashboard();
        }

        dashboard() {
            this.userService.dashboard()
            .subscribe((response) => {
                this.stats = response;
            });  
        }

        suspendOrActivate(id: any, isActive: any) {
            this.toastService.showLoading();
            this.userService.suspendOrActivate(id, {
                is_active: ((isActive === 1) ? 0 : 1)
            })
            .subscribe((response) => {
                this.getUsers(this.type);
                this.toastService.clearLoading();
                this.toastService.success('Sucessfully updated');
            });
        }
    
        getUsers(typeData) {
            if (typeData) {
                this.type = typeData;
            }    
            this.toastService.showLoading();
            this.userService.getUserAlls({
                type: this.type
            })
            .subscribe((response) => {
                this.users = response.data;
                this.toastService.clearLoading();
            });
        }
}
