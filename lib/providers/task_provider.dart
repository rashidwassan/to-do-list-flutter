import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskProvider with ChangeNotifier {
  List<Task> tasks = [];

  get getTasks {
    return tasks;
  }

  setCompleted(int index) {
    tasks[index].isCompleted = true;
    notifyListeners();
  }

  addTask(Task newTask) {
    tasks.add(newTask);

    notifyListeners();
  }

  removeTask(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }
}
