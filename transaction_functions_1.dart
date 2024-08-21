import 'package:hive/hive.dart';
import 'transaction_model_1.dart';

class Transactionfunctions {
  static Future<Box<Transaction>> _openBox() async {
    return await Hive.openBox<Transaction>('transactions_db');
  }

  static Future<void> addTransaction(Transaction transaction) async {
    final box = await _openBox();
    await box.add(transaction);
  }

  static Future<List<Transaction>> getTransactions() async {
    final box = await _openBox();
    return box.values.toList();
  }

  static Future<void> deleteTransaction(int index) async {
    final box = await _openBox();
    await box.deleteAt(index);
  }
}
