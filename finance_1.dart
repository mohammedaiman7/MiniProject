import 'package:flutter/material.dart';
import 'package:shedule_ease1/addTransactionForm.dart';
import 'package:shedule_ease1/addTransactionForm.dart';
import 'package:shedule_ease1/transaction_model_1.dart';
import 'package:shedule_ease1/transaction_functions_1.dart';
import 'package:intl/intl.dart';

double balance = 0.0;

class ScheduleFinance extends StatefulWidget {
  static final GlobalKey<_ScheduleFinanceState> scheduleFinanceKey =
      GlobalKey<_ScheduleFinanceState>();

  double getbalance() {
    return balance;
  }

  @override
  _ScheduleFinanceState createState() => _ScheduleFinanceState();
}

class _ScheduleFinanceState extends State<ScheduleFinance> {
  List<Transaction> _transactions = [];

  @override
  void initState() {
    super.initState();
    _loadTransactions();
  }

  void _loadTransactions() async {
    print("Loading transactions...");
    List<Transaction> transactions =
        await Transactionfunctions.getTransactions();
    print("Loaded transactions: $transactions");
    setState(() {
      _transactions = transactions;
    });
  }

  double get _balance {
    double balance = 0.0;
    _transactions.forEach((transaction) {
      if (transaction.isIncome) {
        balance += transaction.amount;
      } else {
        balance -= transaction.amount;
      }
    });
    return balance;
  }

  void _addTransaction(
    String title,
    double amount,
    bool isIncome,
    String date,
  ) async {
    final newTransaction = Transaction(
        title: title, amount: amount, isIncome: isIncome, date: date);
    await Transactionfunctions.addTransaction(newTransaction);
    setState(() {
      _transactions.add(newTransaction);
    });
    print(title);
  }
  /* void _addTransaction(
    String title,
    double amount,
    bool isIncome,
    String date,
  ) async {
    final newTransaction = Transaction(
        title: title, amount: amount, isIncome: isIncome, date: date);
    print("Adding transaction: $newTransaction");
    await Transactionfunctions.addTransaction(newTransaction);
    setState(() {
      _transactions.add(newTransaction);
    });
    print("Current transactions: $_transactions");
  } */

  void _deleteTransaction(int index) async {
    await Transactionfunctions.deleteTransaction(index);

    setState(() {
      _transactions.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Income Expense Tracker'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Balance:\₹${_balance.toStringAsFixed(2)}  ',
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _transactions.length,
              itemBuilder: (ctx, index) {
                print("Transaction at index $index: ${_transactions[index]}");
                Color amountColor =
                    _transactions[index].isIncome ? Colors.green : Colors.red;
                return Card(
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: FittedBox(
                          child: Text(
                            '${_transactions[index].amount}',
                            style: TextStyle(color: amountColor),
                          ),
                        ),
                      ),
                    ),
                    title: Text(_transactions[index].title),
                    subtitle: Text(_transactions[index].isIncome
                        ? 'Income    ${_transactions[index].date} '
                        : 'Expense     ${_transactions[index].date}'),
                    trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () => _deleteTransaction(index)),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (_) {
              return GestureDetector(
                onTap: () {},
                behavior: HitTestBehavior.opaque,
                child: AddTransactionForm(
                    (String title, double amount, bool isIncome, String date) {
                  _addTransaction(
                    title,
                    amount,
                    isIncome,
                    date,
                  );
                  Navigator.of(context).pop();
                }),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
