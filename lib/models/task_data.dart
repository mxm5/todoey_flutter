import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task_model.dart';

class TaskData extends ChangeNotifier {

  List<Task> _meTaskList = [
    Task(name: ' buy shits '),
    Task(name: ' buy milk '),
    Task(name: ' buy pants '),
    Task(name: ' buy man '),
  ];

  int get taskCount => _meTaskList.length;

// UnmodifiableListView<Task> get meTaskList => _meTaskList;//TODO: GIVES ERROR BECAUSE TYPE MUST BE CONSTRUCTED NOT ASSIGNED

  UnmodifiableListView<Task> get meTaskList => UnmodifiableListView(_meTaskList);

  void addTask(String taskName) {
    _meTaskList.add(Task(name: taskName));
    notifyListeners();
  }

  void updateTask (Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _meTaskList.remove(task);
    notifyListeners();
  }

}
