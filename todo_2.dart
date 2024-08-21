import 'package:flutter/material.dart';
import 'package:shedule_ease1/task_1.dart';
import 'package:shedule_ease1/db_functions_1.dart';
import 'package:shedule_ease1/list_task_widget_2.dart';

class SheduleToDo extends StatefulWidget {
  const SheduleToDo({Key? key}) : super(key: key);

  @override
  _SheduleToDoState createState() => _SheduleToDoState();
}

class _SheduleToDoState extends State<SheduleToDo> {
  List<Task> _tasks = [];

  @override
  void initState() {
    super.initState();
    _loadTask();
  }

  Future<void> _loadTask() async {
    List<Task> tasks = await Taskfunctions.getAllTask();
    setState(() {
      _tasks = tasks;
    });
  }

  void _deleteTask(int index) async {
    await Taskfunctions.deleteTask(index);
    setState(() {
      _tasks.removeAt(index);
    });
  }

  Future<void> _showAddTaskDialog(BuildContext context) async {
    showDialog(
      context: context,
      builder: (context) {
        return ListTaskWidget((String title, String startTime, String endTime) {
          _addTask(title, startTime,
              endTime); // Call _addTask method with the received values
        });
      },
    );
  }

  void _addTask(String title, String startTime, String endTime) {
    if (title.isNotEmpty && startTime.isNotEmpty && endTime.isNotEmpty) {
      Task newTask = Task(
        title: title,
        startTime: startTime,
        endTime: endTime,
      );
      Taskfunctions.addTask(newTask);
      _loadTask();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo List'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _tasks.length,
                itemBuilder: (context, index) {
                  final task = _tasks[index];
                  return ListTile(
                    title: Text(task.title),
                    subtitle:
                        Text('Start: ${task.startTime} - End: ${task.endTime}'),
                    trailing: IconButton(
                      icon: Icon(Icons.done),
                      onPressed: () => _deleteTask(index),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddTaskDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
