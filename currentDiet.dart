import 'package:flutter/material.dart';
import 'package:shedule_ease1/bd/functions/functions.dart';
import 'package:shedule_ease1/bd/model/model.dart';

class AddCurrentDiet extends StatelessWidget {
  AddCurrentDiet({super.key});
  final _charbohydrateControler = TextEditingController();
  final _fatControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Current Diet'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'Enter the average amount of each nutrients you consume every day in calorie',
                style: TextStyle(fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _charbohydrateControler,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Carbohydrate',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _fatControler,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Fat',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  updateNutrientStatus(
                    CurrentNutrientLevel(
                      charbohydrate: int.parse(_charbohydrateControler.text),
                      fat: int.parse(_fatControler.text),
                    ),
                  );
                  Navigator.of(context).pop();
                },
                child: Text('Update'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
