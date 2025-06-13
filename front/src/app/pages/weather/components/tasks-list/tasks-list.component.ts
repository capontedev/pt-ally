import { Component, OnDestroy } from '@angular/core';
import { Subscription } from 'rxjs';
import { Task } from '../../../../interfaces/task.interface';
import { TaskService } from '../../../../services/task.service';

@Component({
  selector: 'app-tasks-list',
  standalone: false,
  templateUrl: './tasks-list.component.html',
  styleUrl: './tasks-list.component.scss'
})
export class TasksListComponent implements OnDestroy {
  private subscription: Subscription;
  taskList: Task[] = [];

  constructor(private taskService: TaskService) {
    this.subscription = this.taskService.getTasks().subscribe({
      next: (data) => {
        this.taskList = data 
      }
    });
  }

  ngOnDestroy() {
    this.subscription.unsubscribe();
  }
}
