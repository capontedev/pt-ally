import { Component, OnDestroy } from '@angular/core';
import { Subscription } from 'rxjs';
import { UserService } from '../../services/user.service';

@Component({
  selector: 'app-users',
  standalone: false,
  templateUrl: './users.component.html',
  styleUrl: './users.component.scss'
})
export class UsersComponent implements OnDestroy {
  private subscription: Subscription;
  //countryInfo?: CountryInfo 

  constructor(private userService: UserService) {
    this.subscription = this.userService.getUsers().subscribe({
      next: (data) => {
        console.log(data)
      }
    });
  }

  ngOnDestroy() {
    this.subscription.unsubscribe();
  }
}

