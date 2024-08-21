import 'package:flutter/material.dart';
import 'package:shedule_ease1/finance_1.dart';
import 'package:shedule_ease1/health.dart';
import 'package:shedule_ease1/profile.dart';
import 'package:shedule_ease1/screen_home_1.dart';
import 'package:shedule_ease1/settings.dart';
import 'package:shedule_ease1/todo_2.dart';

class SheduleHome extends StatefulWidget {
  SheduleHome({Key? key}) : super(key: key);

  @override
  State<SheduleHome> createState() => _SheduleHomeState();
}

class _SheduleHomeState extends State<SheduleHome> {
  int _currentSelectedIndex = 0;

  var _list = [
    [ScreenHome()],
    [SheduleHealth()],
    [ScheduleFinance()],
    [SheduleToDo()]
  ];
  List<int> _list1 = [0, 0, 0, 0];
  @override
  Widget build(BuildContext context) {
    var _id = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text('SheduleEase'),
        backgroundColor: Colors.blue,
        elevation: 0, // Remove elevation for a flat look
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 9, 53, 121),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        currentIndex: _currentSelectedIndex,
        onTap: (newIndex) {
          setState(() {
            _currentSelectedIndex = newIndex;
            if (_list1[newIndex] != 0) {
              setState(() {
                _list1[newIndex] = 0;
              });
            }
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.health_and_safety),
            label: 'Health',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: 'Finance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: 'ToDo',
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 80,
                    child: Image.asset(
                      'assets/logo.png', // Replace with your image asset
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    "SheduleEase",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                setState(() {
                  if (_id != 4) {
                    Navigator.pop(context);
                    _list[_currentSelectedIndex].add(ProfilePage());

                    _list1[_currentSelectedIndex] =
                        _list1[_currentSelectedIndex] + 1;
                    _id = 4;
                  }
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                if (_id != 5) {
                  setState(() {
                    _list[_currentSelectedIndex].add(SettingsPage());

                    _list1[_currentSelectedIndex] =
                        _list1[_currentSelectedIndex] + 1;
                    _id = 5;
                  });
                  Navigator.pop(context);
                }
              },
            ),
          ],
        ),
      ),
      body: _list[_currentSelectedIndex][_list1[_currentSelectedIndex]],
    );
  }
}
