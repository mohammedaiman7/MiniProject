import 'package:flutter/material.dart';
import 'package:shedule_ease1/transaction_model_1.dart';
import 'package:shedule_ease1/transaction_functions_1.dart';
import 'package:intl/intl.dart';

class AddTransactionForm extends StatefulWidget {
  final Function(String, double, bool, String) onSubmit;

  AddTransactionForm(this.onSubmit);

  @override
  _AddTransactionFormState createState() => _AddTransactionFormState();
}

class _AddTransactionFormState extends State<AddTransactionForm> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  final _dateController = TextEditingController();
  bool _isIncome = true;
  //bool _validate = false;

  void _submitData() async {
    final enteredTitle = _titleController.text;
    final enteredAmount = double.parse(_amountController.text);
    final pickedDate = _dateController.text;
    print(enteredTitle);
    print(enteredAmount);
    print(pickedDate);
    print(_isIncome);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    await Transactionfunctions.addTransaction(Transaction(
        title: enteredTitle,
        amount: enteredAmount,
        isIncome: _isIncome,
        date: pickedDate));

    await widget.onSubmit(enteredTitle, enteredAmount, _isIncome, pickedDate);
    // final result = await widget.onSubmit(
    ////     enteredTitle, enteredAmount, _isIncome, pickedDate);
    //print("Result of onSubmit: $result");
  }

  Future<void> _selectDate() async {
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));
    if (_picked != null) {
      setState(() {
        _dateController.text = _picked.toString().split(" ")[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: 'Title',
//errorText: _validate ? 'Title Cannot Be Empty' : null,
                ),
                controller: _titleController,
                onSubmitted: (_) => _submitData(),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Amount',
                  // errorText: _validate ? 'Amount Cannot Be Empty' : null,
                ),
                controller: _amountController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                onSubmitted: (_) => _submitData(),
              ),
              TextField(
                  controller: _dateController,
                  decoration: InputDecoration(
                    labelText: 'Date',
                    filled: true,
                    prefixIcon: Icon(Icons.calendar_today),
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                  ),
                  onSubmitted: (_) => _submitData(),
                  readOnly: true,
                  onTap: () {
                    _selectDate();
                  }),
              Row(
                children: <Widget>[
                  Text('Income'),
                  Switch(
                    value: _isIncome,
                    onChanged: (val) {
                      setState(() {
                        _isIncome = val;
                      });
                    },
                  ),
                  Text('Expense'),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  _submitData();
                  Navigator.of(context).pop();
                },
                child: Text('Add Transaction'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
