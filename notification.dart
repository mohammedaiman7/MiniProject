import 'package:flutter/material.dart';

class NotificationSettingsPage extends StatefulWidget {
  @override
  _NotificationSettingsPageState createState() =>
      _NotificationSettingsPageState();
}

class _NotificationSettingsPageState extends State<NotificationSettingsPage> {
  bool _enableNotifications =
      true; // Assuming initial state for notification toggle

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification Settings'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SwitchListTile(
              title: Text('Enable Notifications'),
              value: _enableNotifications,
              onChanged: (newValue) =>
                  setState(() => _enableNotifications = newValue),
            ),
            // Add more notification settings options as needed (e.g., sound selection, schedule)
            ElevatedButton(
              onPressed: () {
                // Handle saving notification settings (if applicable)
                Navigator.pop(context); // Go back to SettingsPage
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
