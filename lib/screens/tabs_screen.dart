import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'profile_screen.dart';
import 'settings_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Jumlah tab
      child: Scaffold(
        appBar: AppBar(
          title: Text('Aplikasi Tab Sederhana'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Beranda'), // Tab pertama
              Tab(text: 'Profil'),  // Tab kedua
              Tab(text: 'Pengaturan'), // Tab ketiga
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomeScreen(), // Konten untuk tab pertama
            ProfileScreen(), // Konten untuk tab kedua
            SettingsScreen(), // Konten untuk tab ketiga
          ],
        ),
      ),
    );
  }
}
