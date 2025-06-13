import { Component } from '@angular/core';
import { AuthService } from '../../../../services/auth.service';

interface NavItem {
  id: string;
  label: string;
  icon: string;
}

@Component({
  selector: 'app-sidebar',
  standalone: false,
  templateUrl: './sidebar.component.html',
  styleUrl: './sidebar.component.scss'
})
export class SidebarComponent {
  activeItem: string = 'weather';
  navItems: NavItem[] = [
    { id: "weather", label: "Weather", icon: "🌤️" },
    { id: "users", label: "Usuarios", icon: "⬆️" },
    { id: "logout", label: "Salir", icon: "🚪" },
  ]

  constructor(private authService: AuthService) {}

  handleNavClick(navItem: NavItem): void {
    if (navItem.id === 'logout') {
      this.authService.logout();
    } else {
      this.activeItem = navItem.id;
    }
  }
}
