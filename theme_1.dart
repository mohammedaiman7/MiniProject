import 'package:flutter/material.dart';
import 'package:shedule_ease1/theme_changer.dart';

class ThemeSelectionPage extends StatefulWidget {
  @override
  _ThemeSelectionPageState createState() => _ThemeSelectionPageState();
}

class _ThemeSelectionPageState extends State<ThemeSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Selection'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  MyThemes.lightTheme;
                });
              },
              child: Text('Light Theme'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Customize light theme button style
              ),
            ),
            SizedBox(height: 20), // Add spacing between buttons
            ElevatedButton(
              onPressed: () {
                setState(() {
                  MyThemes.darkTheme;
                });
              },
              child: Text('Dark Theme'),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[800], // Customize dark theme button style
              ),
            ),
          ],
        ),
      ),
    );
  }
}
