//import 'package:flutter/material.dart';
//import 'package:hive_flutter/adapters.dart';
import 'package:hive/hive.dart';
part 'task.g.dart';

@HiveType(typeId: 0)
class Task {
  @HiveField(0)
  late String title;

  @HiveField(1)
  late String startTime;

  @HiveField(2)
  late String endTime;

  Task({required this.title, required this.startTime, required this.endTime});
}
