import 'package:flutter/material.dart';
import 'package:shedule_ease1/finance_1.dart';
import 'package:shedule_ease1/home.dart';
import 'package:shedule_ease1/health.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  double _balance = 0.0;
  final _diet = ['break fast', 'lunch', 'snacks', 'dinner'];

  Future<void> _fetchBalance() async {
    // SheduleFinance sf = new SheduleFinance();

    //final fetchedBalance = await sf.getbalance();
    setState(() {
      //  _balance = fetchedBalance;
    });
  }

  Future<void> _fetchDiet() async {
    // SheduleHealth sh = new SheduleHealth();
    // final fetchedDiet = await sh.fetchdiet();
    setState(() {
      //   _diet.addAll(fetchedDiet);
    });
  }

  @override
  void initState() {
    super.initState();
    _fetchBalance();
    _fetchDiet();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Finance and Diet Tracker'),
        backgroundColor: Colors.blueGrey,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // Finance Section
              _buildFinanceSection(),

              const SizedBox(height: 20.0),

              // Diet Section
              _buildDietSection(),
              const SizedBox(
                  height: 32.0), // Adjust the height for desired space

              _buildtodo("hello"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFinanceSection() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Balance:',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '₹${_balance.toStringAsFixed(2)}',
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDietSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Diet Today',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 10.0),
        SizedBox(
          height: 150.0,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return _buildDietCard(_diet[index]);
            },
            separatorBuilder: (ctx, index) => const SizedBox(width: 10.0),
            itemCount: _diet.length,
          ),
        ),
      ],
    );
  }

  Widget _buildDietCard(String dietItem) {
    return Container(
        width: 120.0,
        decoration: BoxDecoration(
            color: Colors.blueGrey[100],
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 3.0,
                spreadRadius: 0.5,
              ),
            ]));
  }

  Widget _buildtodo(String todo, {bool isComplete = true}) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                isComplete
                    ? 'Todo: Task is complete'
                    : 'Todo: Task  is not complete ',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: isComplete ? Colors.black : Colors.red,
                ),
              ),
            ),
            if (isComplete) Icon(Icons.check_circle, color: Colors.green),
          ],
        ),
      ),
    );
  }
}
