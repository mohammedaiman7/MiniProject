//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:shedule_ease1/bd/functions/functions.dart';
import 'package:shedule_ease1/bd/model/model.dart';
import 'package:shedule_ease1/currentDiet.dart';
//import 'package:shedule_ease1/data/healthdatabase.dart';

var _list = [HealthHome(), UpdateHelth()];
var id = 0;

class SheduleHealth extends StatefulWidget {
  const SheduleHealth({super.key});

  @override
  State<SheduleHealth> createState() => _SheduleHealthState();
}

class _SheduleHealthState extends State<SheduleHealth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _list[id],
    );
  }
}

class HealthHome extends StatefulWidget {
  const HealthHome({super.key});

  @override
  State<HealthHome> createState() => _HealthHomeState();
}

class _HealthHomeState extends State<HealthHome> {
  int k = 0;
  void initState() {
    //print("hi");
    /*  if (healthData.value.length == 0) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => UpdateHelth()));
    } */

    // checkLogin(context);
    // TODO: implement initState
    super.initState();
  }

  @override
  int i = 0;
  Widget build(BuildContext context) {
    getAllBF();
    getAllL();
    getAllS();
    getAllD();
    getDiet();
    return Container(
        child: Column(
      children: [
        Container(
          child: Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => UpdateHelth()));
                          },
                          child: Text('Update test result')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => UpdatePlanning()));
                          },
                          child: Text('Update planning')),
                    ),
                  ],
                ),
                Center(
                    child: Text(
                  "Todays Diet",
                  style: TextStyle(fontSize: 20),
                )),
                Text(
                    "__________________________________________________________"),
                Expanded(
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 200,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                      ),
                                      child: SizedBox(
                                        child: Center(
                                            child: Text(
                                          'Break Fast',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                        height: 200,
                                        width: 100,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      child: ValueListenableBuilder(
                                          valueListenable: diet[i][0],
                                          builder: (BuildContext ctx,
                                              List<Diet> _diet, Widget? child) {
                                            return ListView.builder(
                                              itemCount: _diet.length,
                                              scrollDirection: Axis.horizontal,
                                              itemBuilder: ((context, index) =>
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 10),
                                                    child: Container(
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          12,
                                                                          85,
                                                                          50),
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      _diet[index]
                                                                          .food
                                                                          .name,
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          12,
                                                                          85,
                                                                          50),
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      _diet[index]
                                                                          .food
                                                                          .prize
                                                                          .toString(),
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .red,
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      'Carbohydrate',
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      _diet[index]
                                                                          .food
                                                                          .Charbohydrate
                                                                          .toString(),
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          14,
                                                                          30,
                                                                          155),
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                      child:
                                                                          Text(
                                                                    'Fat',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  )),
                                                                ),
                                                              ),
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .red,
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      _diet[index]
                                                                          .food
                                                                          .fat
                                                                          .toString(),
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .red,
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                      child:
                                                                          Text(
                                                                    'Protein',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  )),
                                                                ),
                                                              ),
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      _diet[index]
                                                                          .food
                                                                          .protein
                                                                          .toString(),
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          14,
                                                                          30,
                                                                          155),
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      'Nos',
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .red,
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Row(
                                                                      children: [
                                                                        DecoratedBox(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                40,
                                                                            // child:
                                                                            //IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                                                                          ),
                                                                        ),
                                                                        DecoratedBox(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50,
                                                                            height:
                                                                                40,
                                                                            child:
                                                                                Center(
                                                                              child: Text(
                                                                                _diet[index].quantity.toString(),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        DecoratedBox(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                40,
                                                                            //   child:
                                                                            //IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )),
                                            );
                                          }),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 200,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                      ),
                                      child: SizedBox(
                                        child: Center(
                                            child: Text(
                                          'Lunch',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                        height: 200,
                                        width: 100,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      child: ValueListenableBuilder(
                                          valueListenable: diet[i][1],
                                          builder: (BuildContext ctx,
                                              List<Diet> _diet, Widget? child) {
                                            return ListView.builder(
                                              itemCount: _diet.length,
                                              scrollDirection: Axis.horizontal,
                                              itemBuilder: ((context, index) =>
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 10),
                                                    child: Container(
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          12,
                                                                          85,
                                                                          50),
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      _diet[index]
                                                                          .food
                                                                          .name,
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          12,
                                                                          85,
                                                                          50),
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      _diet[index]
                                                                          .food
                                                                          .prize
                                                                          .toString(),
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .red,
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      'Carbohydrate',
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      _diet[index]
                                                                          .food
                                                                          .Charbohydrate
                                                                          .toString(),
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          14,
                                                                          30,
                                                                          155),
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                      child:
                                                                          Text(
                                                                    'Fat',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  )),
                                                                ),
                                                              ),
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .red,
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      _diet[index]
                                                                          .food
                                                                          .fat
                                                                          .toString(),
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .red,
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                      child:
                                                                          Text(
                                                                    'Protein',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  )),
                                                                ),
                                                              ),
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      _diet[index]
                                                                          .food
                                                                          .protein
                                                                          .toString(),
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          14,
                                                                          30,
                                                                          155),
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      'Nos',
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .red,
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Row(
                                                                      children: [
                                                                        DecoratedBox(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                40,
                                                                            // child:
                                                                            //IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                                                                          ),
                                                                        ),
                                                                        DecoratedBox(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50,
                                                                            height:
                                                                                40,
                                                                            child:
                                                                                Center(
                                                                              child: Text(
                                                                                _diet[index].quantity.toString(),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        DecoratedBox(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                40,
                                                                            // child:
                                                                            //IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )),
                                            );
                                          }),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 200,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                      ),
                                      child: SizedBox(
                                        child: Center(
                                            child: Text(
                                          'Snacks',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                        height: 200,
                                        width: 100,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      child: ValueListenableBuilder(
                                          valueListenable: diet[i][2],
                                          builder: (BuildContext ctx,
                                              List<Diet> _diet, Widget? child) {
                                            return ListView.builder(
                                              itemCount: _diet.length,
                                              scrollDirection: Axis.horizontal,
                                              itemBuilder: ((context, index) =>
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 10),
                                                    child: Container(
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          12,
                                                                          85,
                                                                          50),
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      _diet[index]
                                                                          .food
                                                                          .name,
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          12,
                                                                          85,
                                                                          50),
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      _diet[index]
                                                                          .food
                                                                          .prize
                                                                          .toString(),
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .red,
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      'Carbohydrate',
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      _diet[index]
                                                                          .food
                                                                          .Charbohydrate
                                                                          .toString(),
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          14,
                                                                          30,
                                                                          155),
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                      child:
                                                                          Text(
                                                                    'Fat',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  )),
                                                                ),
                                                              ),
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .red,
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      _diet[index]
                                                                          .food
                                                                          .fat
                                                                          .toString(),
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .red,
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                      child:
                                                                          Text(
                                                                    'Protein',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  )),
                                                                ),
                                                              ),
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      _diet[index]
                                                                          .food
                                                                          .protein
                                                                          .toString(),
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          14,
                                                                          30,
                                                                          155),
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      'Nos',
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .red,
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Row(
                                                                      children: [
                                                                        DecoratedBox(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                40,
                                                                            // child:
                                                                            // IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                                                                          ),
                                                                        ),
                                                                        DecoratedBox(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50,
                                                                            height:
                                                                                40,
                                                                            child:
                                                                                Center(
                                                                              child: Text(
                                                                                _diet[index].quantity.toString(),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        DecoratedBox(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                40,
                                                                            // child:
                                                                            // IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )),
                                            );
                                          }),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 200,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                      ),
                                      child: SizedBox(
                                        child: Center(
                                            child: Text(
                                          'Dinner',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                        height: 200,
                                        width: 100,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      child: ValueListenableBuilder(
                                          valueListenable: diet[i][3],
                                          builder: (BuildContext ctx,
                                              List<Diet> _diet, Widget? child) {
                                            return ListView.builder(
                                              itemCount: _diet.length,
                                              scrollDirection: Axis.horizontal,
                                              itemBuilder: ((context, index) =>
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 10),
                                                    child: Container(
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          12,
                                                                          85,
                                                                          50),
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      _diet[index]
                                                                          .food
                                                                          .name,
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          12,
                                                                          85,
                                                                          50),
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      _diet[index]
                                                                          .food
                                                                          .prize
                                                                          .toString(),
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .red,
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      'Carbohydrate',
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      _diet[index]
                                                                          .food
                                                                          .Charbohydrate
                                                                          .toString(),
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          14,
                                                                          30,
                                                                          155),
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                      child:
                                                                          Text(
                                                                    'Fat',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  )),
                                                                ),
                                                              ),
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .red,
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      _diet[index]
                                                                          .food
                                                                          .fat
                                                                          .toString(),
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .red,
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                      child:
                                                                          Text(
                                                                    'Protein',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  )),
                                                                ),
                                                              ),
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      _diet[index]
                                                                          .food
                                                                          .protein
                                                                          .toString(),
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          14,
                                                                          30,
                                                                          155),
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Text(
                                                                      'Nos',
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .red,
                                                                ),
                                                                child: SizedBox(
                                                                  height: 40,
                                                                  width: 130,
                                                                  child: Center(
                                                                    child: Row(
                                                                      children: [
                                                                        DecoratedBox(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                40,
                                                                            //child:
                                                                            // IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                                                                          ),
                                                                        ),
                                                                        DecoratedBox(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50,
                                                                            height:
                                                                                40,
                                                                            child:
                                                                                Center(
                                                                              child: Text(
                                                                                _diet[index].quantity.toString(),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        DecoratedBox(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                40,
                                                                            // child:
                                                                            //IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )),
                                            );
                                          }),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}

class UpdateHelth extends StatefulWidget {
  const UpdateHelth({super.key});

  @override
  State<UpdateHelth> createState() => _UpdateHelthState();
}

final _sugerControler = TextEditingController();
final _cholestrolControler = TextEditingController();
final _pressureControler = TextEditingController();

class _UpdateHelthState extends State<UpdateHelth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _sugerControler,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Blood Suger Level',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _cholestrolControler,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Blood Cholestrol Level',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _pressureControler,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Blood Pressure Level',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  addHealthData(
                    HealthData(
                      bloodSugerLevel: int.parse(_sugerControler.text),
                      bloodFatLevel: int.parse(_cholestrolControler.text),
                      bloodPreserLevel: int.parse(_pressureControler.text),
                    ),
                  );
                  _sugerControler.clear();
                  _cholestrolControler.clear();
                  _pressureControler.clear();
                  Navigator.of(context).pop();
                });
              },
              child: Text('Update'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AddCurrentDiet()));
              },
              child: Text('Add current diet'),
            ),
          ],
        ),
      )),
    );
  }
}

class UpdatePlanning extends StatefulWidget {
  UpdatePlanning({super.key});

  @override
  State<UpdatePlanning> createState() => _UpdatePlanningState();
}

class _UpdatePlanningState extends State<UpdatePlanning> {
  final _mybox = Hive.openBox("schedule_ease");
  //Healthdatabase hdb = Healthdatabase();

  var i = 0;

  final _list = ['Day 1', 'Day 2', 'Day 3', 'Day 4', 'Day 5', 'Day 6', 'Day 7'];

  int lowerCharbohytrate = 30;
  int higerCharbohydrate = 300;
  int lowerFat = 30;
  int higherFat = 300;
  List<int> curCharbo = [0, 0, 0, 0, 0, 0, 0];
  List<int> curFat = [0, 0, 0, 0, 0, 0, 0];
  int exp = 0;
  int expLimit = 1000;
  //List<Food> foodsBreakFast = [Food(name: 'Dosha', prize: 10, Charbohydrate: 10, fat: 10, protein: 10),];
  List<Food> foodsLunch = [
    Food(name: 'Dosha', prize: 10, Charbohydrate: 10, fat: 10, protein: 10),
  ];
  List<Food> foodsSnacks = [
    Food(name: 'Dosha', prize: 10, Charbohydrate: 10, fat: 10, protein: 10),
  ];
  List<Food> foodsDinner = [
    Food(name: 'Dosha', prize: 10, Charbohydrate: 10, fat: 10, protein: 10),
  ];

  @override
  Widget build(BuildContext context) {
    getAllBF();
    getAllL();
    getAllS();
    getAllD();
    // getDiet();
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Planning'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 160,
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        _list[i],
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    LinearProgressIndicator(
                      value: (i + 1) / 7,
                    ),
                    Text('Carbohydrate'),
                    LinearProgressIndicator(
                      value: curCharbo[i] / higerCharbohydrate,
                      color: curCharbo[i] > lowerCharbohytrate &&
                              curCharbo[i] < higerCharbohydrate
                          ? Colors.green
                          : Colors.red,
                    ),
                    Text('Fat'),
                    LinearProgressIndicator(
                      value: curFat[i] / higherFat,
                      color: curFat[i] > lowerFat && curFat[i] < higherFat
                          ? Colors.green
                          : Colors.red,
                    ),
                    Text('Expence'),
                    LinearProgressIndicator(value: exp / expLimit),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 200,
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 8),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                    ),
                                    child: SizedBox(
                                      child: Center(
                                          child: Text(
                                        'Break Fast',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                      height: 200,
                                      width: 100,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SizedBox(
                                    child: ValueListenableBuilder(
                                        valueListenable: diet[i][0],
                                        builder: (BuildContext ctx,
                                            List<Diet> _diet, Widget? child) {
                                          return ListView.builder(
                                            itemCount: _diet.length,
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: ((context, index) =>
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 10),
                                                  child: Container(
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        12,
                                                                        85,
                                                                        50),
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    _diet[index]
                                                                        .food
                                                                        .name,
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        12,
                                                                        85,
                                                                        50),
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    _diet[index]
                                                                        .food
                                                                        .prize
                                                                        .toString(),
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    Colors.red,
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    'Carbohydrate',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .green,
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    _diet[index]
                                                                        .food
                                                                        .Charbohydrate
                                                                        .toString(),
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        14,
                                                                        30,
                                                                        155),
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                    child: Text(
                                                                  'Fat',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                )),
                                                              ),
                                                            ),
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    Colors.red,
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    _diet[index]
                                                                        .food
                                                                        .fat
                                                                        .toString(),
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    Colors.red,
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                    child: Text(
                                                                  'Protein',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                )),
                                                              ),
                                                            ),
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .green,
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    _diet[index]
                                                                        .food
                                                                        .protein
                                                                        .toString(),
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        14,
                                                                        30,
                                                                        155),
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    'Nos',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    Colors.red,
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Row(
                                                                    children: [
                                                                      DecoratedBox(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              40,
                                                                          child: IconButton(
                                                                              onPressed: () {
                                                                                setState(() {
                                                                                  _diet[index].quantity += 1;
                                                                                  curCharbo[i] += _diet[index].food.Charbohydrate;
                                                                                  curFat[i] += _diet[index].food.fat;
                                                                                  exp += _diet[index].food.prize;
                                                                                });
                                                                              },
                                                                              icon: Icon(Icons.add)),
                                                                        ),
                                                                      ),
                                                                      DecoratedBox(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50,
                                                                          height:
                                                                              40,
                                                                          child:
                                                                              Center(
                                                                            child:
                                                                                Text(
                                                                              _diet[index].quantity.toString(),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      DecoratedBox(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              40,
                                                                          child: IconButton(
                                                                              onPressed: () {
                                                                                setState(() {
                                                                                  if (_diet[index].quantity != 1) {
                                                                                    _diet[index].quantity -= 1;
                                                                                    curCharbo[i] -= _diet[index].food.Charbohydrate;
                                                                                    curFat[i] -= _diet[index].food.fat;
                                                                                    exp -= _diet[index].food.prize;
                                                                                  }
                                                                                });
                                                                              },
                                                                              icon: Icon(Icons.remove)),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )),
                                          );
                                        }),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Center(
                            child: Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    showBottomSheet(context, 0);
                                  },
                                  child: Text('Add to Breakfast'),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    showBottomSheet2(context, 0);
                                  },
                                  child: Text('Remove from Breakfast'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 200,
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 8),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                    ),
                                    child: SizedBox(
                                      child: Center(
                                          child: Text(
                                        'Lunch',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                      height: 200,
                                      width: 100,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SizedBox(
                                    child: ValueListenableBuilder(
                                        valueListenable: diet[i][1],
                                        builder: (BuildContext ctx,
                                            List<Diet> _diet, Widget? child) {
                                          return ListView.builder(
                                            itemCount: _diet.length,
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: ((context, index) =>
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 10),
                                                  child: Container(
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        12,
                                                                        85,
                                                                        50),
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    _diet[index]
                                                                        .food
                                                                        .name,
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        12,
                                                                        85,
                                                                        50),
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    _diet[index]
                                                                        .food
                                                                        .prize
                                                                        .toString(),
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    Colors.red,
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    'Carbohydrate',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .green,
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    _diet[index]
                                                                        .food
                                                                        .Charbohydrate
                                                                        .toString(),
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        14,
                                                                        30,
                                                                        155),
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                    child: Text(
                                                                  'Fat',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                )),
                                                              ),
                                                            ),
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    Colors.red,
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    _diet[index]
                                                                        .food
                                                                        .fat
                                                                        .toString(),
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    Colors.red,
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                    child: Text(
                                                                  'Protein',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                )),
                                                              ),
                                                            ),
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .green,
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    _diet[index]
                                                                        .food
                                                                        .protein
                                                                        .toString(),
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        14,
                                                                        30,
                                                                        155),
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    'Nos',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    Colors.red,
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Row(
                                                                    children: [
                                                                      DecoratedBox(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              40,
                                                                          child: IconButton(
                                                                              onPressed: () {
                                                                                setState(() {
                                                                                  _diet[index].quantity += 1;
                                                                                  curCharbo[i] += _diet[index].food.Charbohydrate;
                                                                                  curFat[i] += _diet[index].food.fat;
                                                                                  exp += _diet[index].food.prize;
                                                                                });
                                                                              },
                                                                              icon: Icon(Icons.add)),
                                                                        ),
                                                                      ),
                                                                      DecoratedBox(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50,
                                                                          height:
                                                                              40,
                                                                          child:
                                                                              Center(
                                                                            child:
                                                                                Text(
                                                                              _diet[index].quantity.toString(),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      DecoratedBox(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              40,
                                                                          child: IconButton(
                                                                              onPressed: () {
                                                                                setState(() {
                                                                                  if (_diet[index].quantity != 1) {
                                                                                    _diet[index].quantity -= 1;
                                                                                    curCharbo[i] -= _diet[index].food.Charbohydrate;
                                                                                    curFat[i] -= _diet[index].food.fat;
                                                                                    exp -= _diet[index].food.prize;
                                                                                  }
                                                                                });
                                                                              },
                                                                              icon: Icon(Icons.remove)),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )),
                                          );
                                        }),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Center(
                            child: Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    showBottomSheet(context, 1);
                                  },
                                  child: Text('Add to Lunch'),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    showBottomSheet2(context, 1);
                                  },
                                  child: Text('Remove from Lunch'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 200,
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 8),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                    ),
                                    child: SizedBox(
                                      child: Center(
                                          child: Text(
                                        'Snacks',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                      height: 200,
                                      width: 100,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SizedBox(
                                    child: ValueListenableBuilder(
                                        valueListenable: diet[i][2],
                                        builder: (BuildContext ctx,
                                            List<Diet> _diet, Widget? child) {
                                          return ListView.builder(
                                            itemCount: _diet.length,
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: ((context, index) =>
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 10),
                                                  child: Container(
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        12,
                                                                        85,
                                                                        50),
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    _diet[index]
                                                                        .food
                                                                        .name,
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        12,
                                                                        85,
                                                                        50),
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    _diet[index]
                                                                        .food
                                                                        .prize
                                                                        .toString(),
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    Colors.red,
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    'Carbohydrate',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .green,
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    _diet[index]
                                                                        .food
                                                                        .Charbohydrate
                                                                        .toString(),
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        14,
                                                                        30,
                                                                        155),
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                    child: Text(
                                                                  'Fat',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                )),
                                                              ),
                                                            ),
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    Colors.red,
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    _diet[index]
                                                                        .food
                                                                        .fat
                                                                        .toString(),
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    Colors.red,
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                    child: Text(
                                                                  'Protein',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                )),
                                                              ),
                                                            ),
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .green,
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    _diet[index]
                                                                        .food
                                                                        .protein
                                                                        .toString(),
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        14,
                                                                        30,
                                                                        155),
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    'Nos',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    Colors.red,
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Row(
                                                                    children: [
                                                                      DecoratedBox(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              40,
                                                                          child: IconButton(
                                                                              onPressed: () {
                                                                                setState(() {
                                                                                  _diet[index].quantity += 1;
                                                                                  curCharbo[i] += _diet[index].food.Charbohydrate;
                                                                                  curFat[i] += _diet[index].food.fat;
                                                                                  exp += _diet[index].food.prize;
                                                                                });
                                                                              },
                                                                              icon: Icon(Icons.add)),
                                                                        ),
                                                                      ),
                                                                      DecoratedBox(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50,
                                                                          height:
                                                                              40,
                                                                          child:
                                                                              Center(
                                                                            child:
                                                                                Text(
                                                                              _diet[index].quantity.toString(),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      DecoratedBox(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              40,
                                                                          child: IconButton(
                                                                              onPressed: () {
                                                                                setState(() {
                                                                                  if (_diet[index].quantity != 1) {
                                                                                    _diet[index].quantity -= 1;
                                                                                    curCharbo[i] -= _diet[index].food.Charbohydrate;
                                                                                    curFat[i] -= _diet[index].food.fat;
                                                                                    exp -= _diet[index].food.prize;
                                                                                  }
                                                                                });
                                                                              },
                                                                              icon: Icon(Icons.remove)),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )),
                                          );
                                        }),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Center(
                            child: Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    showBottomSheet(context, 2);
                                  },
                                  child: Text('Add to Snacks'),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    showBottomSheet2(context, 2);
                                  },
                                  child: Text('Remove from Snacks'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 200,
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 8),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                    ),
                                    child: SizedBox(
                                      child: Center(
                                          child: Text(
                                        'Dinner',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                      height: 200,
                                      width: 100,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SizedBox(
                                    child: ValueListenableBuilder(
                                        valueListenable: diet[i][3],
                                        builder: (BuildContext ctx,
                                            List<Diet> _diet, Widget? child) {
                                          return ListView.builder(
                                            itemCount: _diet.length,
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: ((context, index) =>
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 10),
                                                  child: Container(
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        12,
                                                                        85,
                                                                        50),
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    _diet[index]
                                                                        .food
                                                                        .name,
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        12,
                                                                        85,
                                                                        50),
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    _diet[index]
                                                                        .food
                                                                        .prize
                                                                        .toString(),
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    Colors.red,
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    'Carbohydrate',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .green,
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    _diet[index]
                                                                        .food
                                                                        .Charbohydrate
                                                                        .toString(),
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        14,
                                                                        30,
                                                                        155),
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                    child: Text(
                                                                  'Fat',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                )),
                                                              ),
                                                            ),
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    Colors.red,
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    _diet[index]
                                                                        .food
                                                                        .fat
                                                                        .toString(),
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    Colors.red,
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                    child: Text(
                                                                  'Protein',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                )),
                                                              ),
                                                            ),
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .green,
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    _diet[index]
                                                                        .food
                                                                        .protein
                                                                        .toString(),
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        14,
                                                                        30,
                                                                        155),
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Text(
                                                                    'Nos',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    Colors.red,
                                                              ),
                                                              child: SizedBox(
                                                                height: 40,
                                                                width: 130,
                                                                child: Center(
                                                                  child: Row(
                                                                    children: [
                                                                      DecoratedBox(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              40,
                                                                          child: IconButton(
                                                                              onPressed: () {
                                                                                setState(() {
                                                                                  _diet[index].quantity += 1;
                                                                                  curCharbo[i] += _diet[index].food.Charbohydrate;
                                                                                  curFat[i] += _diet[index].food.fat;
                                                                                  exp += _diet[index].food.prize;
                                                                                });
                                                                              },
                                                                              icon: Icon(Icons.add)),
                                                                        ),
                                                                      ),
                                                                      DecoratedBox(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50,
                                                                          height:
                                                                              40,
                                                                          child:
                                                                              Center(
                                                                            child:
                                                                                Text(
                                                                              _diet[index].quantity.toString(),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      DecoratedBox(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              40,
                                                                          child: IconButton(
                                                                              onPressed: () {
                                                                                setState(() {
                                                                                  if (_diet[index].quantity != 1) {
                                                                                    _diet[index].quantity -= 1;
                                                                                    curCharbo[i] -= _diet[index].food.Charbohydrate;
                                                                                    curFat[i] -= _diet[index].food.fat;
                                                                                    exp -= _diet[index].food.prize;
                                                                                  }
                                                                                });
                                                                              },
                                                                              icon: Icon(Icons.remove)),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )),
                                          );
                                        }),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Center(
                            child: Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    showBottomSheet(context, 3);
                                  },
                                  child: Text('Add to Dinner'),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    showBottomSheet2(context, 3);
                                  },
                                  child: Text('Remove from Dinner'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if ((curCharbo[i] > lowerCharbohytrate &&
                                    curCharbo[i] < higerCharbohydrate) &&
                                (curFat[i] > lowerFat &&
                                    curFat[i] < higherFat)) {
                              i = (i + 1) % 7;
                            } else if (curCharbo[i] < lowerCharbohytrate) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      duration: Duration(seconds: 1),
                                      backgroundColor:
                                          const Color.fromARGB(255, 219, 21, 7),
                                      behavior: SnackBarBehavior.floating,
                                      margin: EdgeInsets.all(10),
                                      content:
                                          Text("Inseficent Charbohydrate")));
                            } else if (curFat[i] < lowerFat) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      duration: Duration(seconds: 1),
                                      backgroundColor:
                                          const Color.fromARGB(255, 219, 21, 7),
                                      behavior: SnackBarBehavior.floating,
                                      margin: EdgeInsets.all(1),
                                      content: Text("Inseficent Fat")));
                            } else if (curCharbo[i] > higerCharbohydrate) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      duration: Duration(seconds: 10),
                                      backgroundColor:
                                          const Color.fromARGB(255, 219, 21, 7),
                                      behavior: SnackBarBehavior.floating,
                                      margin: EdgeInsets.all(1),
                                      content:
                                          Text("Charbohydrate limit exceded")));
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      duration: Duration(seconds: 1),
                                      backgroundColor:
                                          const Color.fromARGB(255, 219, 21, 7),
                                      behavior: SnackBarBehavior.floating,
                                      margin: EdgeInsets.all(10),
                                      content: Text("Fat limit exceded")));
                            }
                          });
                        },
                        child: Text('Next Day')),
                    ElevatedButton(
                        onPressed: () {
                          if (exp < expLimit) {
                            Navigator.of(context).pop();
                            updateDiet();
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                duration: Duration(seconds: 1),
                                backgroundColor:
                                    const Color.fromARGB(255, 219, 21, 7),
                                behavior: SnackBarBehavior.floating,
                                margin: EdgeInsets.all(10),
                                content: Text("Expence out of limit")));
                          }
                        },
                        child: Text("Update")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<List<List<String>>> food = [
    [
      ["Dosha", '10', '10', '10', '10'],
    ],
    [
      ["Dosha", '10', '10', '10', '10'],
    ],
    [
      ["Dosha", '10', '10', '10', '10'],
    ],
    [
      ["Dosha", '10', '10', '10', '10'],
    ]
  ];
  List<ValueNotifier<List<Food>>> food4 = [breakFast, lunch, snacks, dinner];
  var food2 = [1, 1, 1, 1];
  List<String> cur = [];
  Future<void> showBottomSheet(BuildContext ctx, int a) async {
    showModalBottomSheet(
      context: ctx,
      builder: (ctx1) {
        return Column(
          children: [
            Container(
              width: double.infinity,
              height: 380,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Expanded(
                      child: ValueListenableBuilder(
                          valueListenable: food4[a],
                          builder: (BuildContext ctx, List<Food> breakfast,
                              Widget? child) {
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: breakfast.length,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          DecoratedBox(
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 12, 85, 50),
                                            ),
                                            child: SizedBox(
                                              height: 40,
                                              width: 130,
                                              child: Center(
                                                child: Text(
                                                  breakfast[index].name,
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                          DecoratedBox(
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 12, 85, 50),
                                            ),
                                            child: SizedBox(
                                              height: 40,
                                              width: 130,
                                              child: Center(
                                                child: Text(
                                                  breakfast[index]
                                                      .prize
                                                      .toString(),
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          DecoratedBox(
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                            ),
                                            child: SizedBox(
                                              height: 40,
                                              width: 130,
                                              child: Center(
                                                child: Text(
                                                  'Carbohydrate ',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                          DecoratedBox(
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                            ),
                                            child: SizedBox(
                                              height: 40,
                                              width: 130,
                                              child: Center(
                                                child: Text(
                                                  breakfast[index]
                                                      .Charbohydrate
                                                      .toString(),
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          DecoratedBox(
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 14, 30, 155),
                                            ),
                                            child: SizedBox(
                                              height: 40,
                                              width: 130,
                                              child: Center(
                                                child: Text(
                                                  'Fat',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                          DecoratedBox(
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                            ),
                                            child: SizedBox(
                                              height: 40,
                                              width: 130,
                                              child: Center(
                                                child: Text(
                                                  breakfast[index]
                                                      .fat
                                                      .toString(),
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          DecoratedBox(
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                            ),
                                            child: SizedBox(
                                              height: 40,
                                              width: 130,
                                              child: Center(
                                                child: Text(
                                                  'Protein',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                          DecoratedBox(
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                            ),
                                            child: SizedBox(
                                              height: 40,
                                              width: 130,
                                              child: Center(
                                                child: Text(
                                                  breakfast[index]
                                                      .protein
                                                      .toString(),
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              addDiet(
                                                  Diet(
                                                      food: breakfast[index],
                                                      quantity: 1),
                                                  i,
                                                  a);
                                              Navigator.of(ctx1).pop();
                                              curCharbo[i] += breakfast[index]
                                                  .Charbohydrate;
                                              curFat[i] += breakfast[index].fat;
                                              exp += breakfast[index].prize;
                                            });
                                          },
                                          child: Text('Add')),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  showBottomSheet1(context, a);
                },
                child: Text('Add your item')),
          ],
        );
      },
    );
  }

  Future<void> showBottomSheet2(BuildContext ctx, int a) async {
    showModalBottomSheet(
      context: ctx,
      builder: (ctx1) {
        return Column(
          children: [
            Container(
              width: double.infinity,
              height: 380,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Expanded(
                      child: ValueListenableBuilder(
                        valueListenable: diet[i][a],
                        builder: (BuildContext ctx, List<Diet> _diet,
                            Widget? child) {
                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: _diet.length,
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                            color:
                                                Color.fromARGB(255, 12, 85, 50),
                                          ),
                                          child: SizedBox(
                                            height: 40,
                                            width: 130,
                                            child: Center(
                                              child: Text(
                                                _diet[index].food.name,
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                            color:
                                                Color.fromARGB(255, 12, 85, 50),
                                          ),
                                          child: SizedBox(
                                            height: 40,
                                            width: 130,
                                            child: Center(
                                              child: Text(
                                                _diet[index]
                                                    .food
                                                    .prize
                                                    .toString(),
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                          ),
                                          child: SizedBox(
                                            height: 40,
                                            width: 130,
                                            child: Center(
                                              child: Text(
                                                'Charbohydrate ',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                          child: SizedBox(
                                            height: 40,
                                            width: 130,
                                            child: Center(
                                              child: Text(
                                                _diet[index]
                                                    .food
                                                    .Charbohydrate
                                                    .toString(),
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 14, 30, 155),
                                          ),
                                          child: SizedBox(
                                            height: 40,
                                            width: 130,
                                            child: Center(
                                              child: Text(
                                                'Fat',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                          ),
                                          child: SizedBox(
                                            height: 40,
                                            width: 130,
                                            child: Center(
                                              child: Text(
                                                _diet[index]
                                                    .food
                                                    .fat
                                                    .toString(),
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                          ),
                                          child: SizedBox(
                                            height: 40,
                                            width: 130,
                                            child: Center(
                                              child: Text(
                                                'Protein',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                          child: SizedBox(
                                            height: 40,
                                            width: 130,
                                            child: Center(
                                              child: Text(
                                                _diet[index]
                                                    .food
                                                    .protein
                                                    .toString(),
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            curCharbo[i] -= _diet[index]
                                                    .food
                                                    .Charbohydrate *
                                                _diet[index].quantity;
                                            curFat[i] -= _diet[index].food.fat *
                                                _diet[index].quantity;
                                            exp -= _diet[index].food.prize *
                                                _diet[index].quantity;
                                            //_diet[i][a].removeAt(index);
                                            // print(_diet);

                                            Navigator.of(ctx1).pop();
                                          });
                                        },
                                        child: Text('Remove')),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  final _nameControler = TextEditingController();
  final _priceControler = TextEditingController();
  final _charbohydrateontroler = TextEditingController();
  final _fatControler = TextEditingController();
  final _protienControler = TextEditingController();

  Future<void> showBottomSheet1(BuildContext ctx, int a) async {
    showModalBottomSheet(
      context: ctx,
      builder: (ctx1) {
        return Container(
          width: double.infinity,
          height: 1200,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: _nameControler,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Name',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: _priceControler,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Price',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: _charbohydrateontroler,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Charbohydrate',
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: _protienControler,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Protien',
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          cur.add(_nameControler.text);
                          cur.add(_priceControler.text);
                          cur.add(_charbohydrateontroler.text);
                          cur.add(_fatControler.text);
                          cur.add(_protienControler.text);
                          food2[a]++;
                          final food3 = Food(
                            name: _nameControler.text.trim().toString(),
                            prize: int.parse(_priceControler.text.trim()),
                            Charbohydrate:
                                int.parse(_charbohydrateontroler.text.trim()),
                            fat: int.parse(_fatControler.text.trim()),
                            protein: int.parse(_protienControler.text.trim()),
                          );
                          print(food3);
                          if (a == 0) {
                            addToBreakFast(food3);
                          } else if (a == 1) {
                            addTolunch(food3);
                          } else if (a == 2) {
                            addsnacks(food3);
                          } else {
                            adddinner(food3);
                          }
                          _nameControler.clear();
                          _priceControler.clear();
                          _fatControler.clear();
                          _charbohydrateontroler.clear();
                          _protienControler.clear();
                          //food[a].add(cur);
                          // print(food);
                          Navigator.of(ctx1).pop();
                          //final _name=_nameControler.trim();

                          //print(foodsBreakFast);
                        });
                        // hdb.updateHealthdata();
                        print("hi");
                      },
                      child: Text('Add'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
