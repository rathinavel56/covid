
import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { QuarantineProfileComponent } from './quarantine.component';

describe('QuarantineProfileComponent', () => {
    let component: QuarantineProfileComponent;
    let fixture: ComponentFixture<QuarantineProfileComponent>;

    beforeEach(async(() => {
        TestBed.configureTestingModule({
            declarations: [QuarantineProfileComponent]
        }).compileComponents();
    }));

    beforeEach(() => {
        fixture = TestBed.createComponent(QuarantineProfileComponent);
        component = fixture.componentInstance;
        fixture.detectChanges();
    });

    it('should create', () => {
        expect(component).toBeTruthy();
    });
});
