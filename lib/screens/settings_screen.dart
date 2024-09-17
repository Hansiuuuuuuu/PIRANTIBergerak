import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Ini adalah tab Pengaturan.',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
