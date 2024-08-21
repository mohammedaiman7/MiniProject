import 'package:flutter/material.dart';
import 'package:shedule_ease1/notification.dart';
import 'package:shedule_ease1/theme_1.dart';
import 'package:shedule_ease1/language.dart';
import 'package:shedule_ease1/aboutus.dart';
//import 'package:shedule_ease1/theme_provider.dart';
//import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Notification Settings'),
            subtitle: Text('Manage your notification preferences'),
            leading: Icon(Icons.notifications),
            onTap: () {
              // Navigate to NotificationSettingsPage
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationSettingsPage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Theme'),
            subtitle: Text('Change app theme'),
            leading: Icon(Icons.color_lens),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ThemeSelectionPage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Language'),
            subtitle: Text('Select app language'),
            leading: Icon(Icons.language),
            onTap: () {
              // Navigate to LanguageSelectionPage
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LanguageSelectionPage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('About us'),
            subtitle: Text('ScheduleEase'),
            leading: Icon(Icons.person),
            onTap: () {
              // Navigate to AboutUsPage
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutUsPage(),
                ),
              );
            },
          ),
          // Add more settings options as needed
        ],
      ),
    );
  }
}
