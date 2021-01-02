
import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { EmployeeHistoryComponent } from './employeehistory.component';

describe('EmployeeHistoryComponent', () => {
    let component: EmployeeHistoryComponent;
    let fixture: ComponentFixture<EmployeeHistoryComponent>;

    beforeEach(async(() => {
        TestBed.configureTestingModule({
            declarations: [EmployeeHistoryComponent]
        }).compileComponents();
    }));

    beforeEach(() => {
        fixture = TestBed.createComponent(EmployeeHistoryComponent);
        component = fixture.componentInstance;
        fixture.detectChanges();
    });

    it('should create', () => {
        expect(component).toBeTruthy();
    });
});
