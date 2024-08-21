import 'package:flutter/material.dart';

class ListTaskWidget extends StatefulWidget {
  final Function(String, String, String) onSubmit;

  ListTaskWidget(this.onSubmit);

  @override
  _ListTaskWidgetState createState() => _ListTaskWidgetState();
}

class _ListTaskWidgetState extends State<ListTaskWidget> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _startTimeController = TextEditingController();
  final TextEditingController _endTimeController = TextEditingController();
  bool _validate = false;
  void dispose() {
    _titleController.dispose();
    _startTimeController.dispose();
    _endTimeController.dispose();
    super.dispose();
  }

  void _submitData() {
    final title = _titleController.text;
    final startTime = _startTimeController.text;
    final endTime = _endTimeController.text;

    if (title.isEmpty || startTime.isEmpty || endTime.isEmpty) {
      return;
    }
    widget.onSubmit(title, startTime, endTime);
    _titleController.clear();
    _startTimeController.clear();
    _endTimeController.clear();
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Add Task'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _titleController,
            decoration: InputDecoration(
              labelText: 'Task',
              errorText: _validate ? 'Task Cannot Be Empty' : null,
            ),
            onSubmitted: (_) => _submitData(),
          ),
          TextField(
            controller: _startTimeController,
            decoration: InputDecoration(
              labelText: 'Time Start',
              errorText: _validate ? 'Time Cannot Be Empty' : null,
            ),
            onSubmitted: (_) => _submitData(),
          ),
          TextField(
            controller: _endTimeController,
            decoration: InputDecoration(
              labelText: 'Time Ends',
              errorText: _validate ? 'Time Cannot Be Empty' : null,
            ),
            onSubmitted: (_) => _submitData(),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            _submitData();
            _titleController.text.isEmpty
                ? _validate = true
                : _validate = false;
            _startTimeController.text.isEmpty
                ? _validate = true
                : _validate = false;
            _endTimeController.text.isEmpty
                ? _validate = true
                : _validate = false;
          },
          child: Text('Add'),
        ),
      ],
    );
  }
}
