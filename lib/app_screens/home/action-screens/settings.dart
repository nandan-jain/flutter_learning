import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        // leading: Icon(Icons.settings_outlined),
      ),
      body: Center(
        child: Text('settings PAge'),
      ),
    );
  }
}
