import 'package:flutter/material.dart';
import 'screens/tabs_screen.dart'; // Mengimpor TabsScreen dari folder screens

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Penerima CV',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TabsScreen(), // Mengarahkan ke layar dengan tab
    );
  }
}
