import 'package:flutter/material.dart';

class LanguageSelectionPage extends StatefulWidget {
  @override
  _LanguageSelectionPageState createState() => _LanguageSelectionPageState();
}

class _LanguageSelectionPageState extends State<LanguageSelectionPage> {
  String _selectedLanguage = 'English'; // Assuming initial language

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language Selection'),
      ),
      body: ListView(
        children: [
          DropdownButton<String>(
            value: _selectedLanguage,
            items: [
              DropdownMenuItem(
                value: 'English',
                child: Text('English'),
              ),
              DropdownMenuItem(
                value: 'Malayalam',
                child: Text('Malayalam'),
              ),
              // Add more languages as needed
            ],
            onChanged: (value) => setState(() => _selectedLanguage = value!),
          ),
          ElevatedButton(
            onPressed: () {
              // Handle applying the selected language
              Navigator.pop(context); // Go back to SettingsPage
            },
            child: Text('Apply'),
          ),
        ],
      ),
    );
  }
}
