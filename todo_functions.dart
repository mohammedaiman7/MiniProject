import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shedule_ease1/task.dart';

ValueNotifier<List<Task>> taskListNotifier = ValueNotifier([]);
Future<void> addTask(Task value) async {
  final taskDB = await Hive.openBox<Task>('task_db');
  await taskDB.add(value);
  taskListNotifier.value.add(value);

  taskListNotifier.notifyListeners();
}

Future<void> getAllTask() async {
  final taskDB = await Hive.openBox<Task>('task_db');
  taskListNotifier.value.clear();
  taskListNotifier.value.addAll(taskDB.values);

  taskListNotifier.notifyListeners();
}
