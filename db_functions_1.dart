import 'package:flutter/material.dart';
import 'package:shedule_ease1/task_1.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Taskfunctions {
  static Future<Box<Task>> _openBox() async {
    return await Hive.openBox<Task>('task_db');
  }

  static Future<void> addTask(Task task) async {
    final box = await _openBox();
    await box.add(task);
  }

  static Future<List<Task>> getAllTask() async {
    final box = await _openBox();
    return box.values.toList();
  }

  static Future<void> deleteTask(int index) async {
    final box = await _openBox();
    await box.deleteAt(index);
  }
}
