import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String name1 = "Muhammad Nizam"; // Nama untuk foto pertama
  final String email1 = "ijamnizam224@gmail.com"; // Email untuk foto pertama
  final String photoUrl1 =
      "https://i.imgur.com/DPxIDeU.jpeg"; // URL gambar pertama

  final String name2 = "M Subahan Aprisal Fani AT"; // Nama untuk foto kedua
  final String email2 = "han@gmail.com"; // Email untuk foto kedua
  final String photoUrl2 =
      "https://i.imgur.com/ZiWmO01.jpeg"; // Ganti dengan URL gambar langsung yang valid

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Set Profil Pertama
            _buildProfileRow(name1, email1, photoUrl1),
            SizedBox(height: 20), // Jarak antara set pertama dan kedua
            // Set Profil Kedua
            _buildProfileRow(name2, email2, photoUrl2),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileRow(String name, String email, String photoUrl) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        // Foto Profil
        CircleAvatar(
          radius: 50, // Ukuran foto profil
          backgroundImage: NetworkImage(
              photoUrl), // Menggunakan NetworkImage untuk gambar dari URL
          backgroundColor: Colors.grey[200],
        ),
        const SizedBox(width: 20), // Jarak antara foto dan teks
        // Informasi Profil
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Nama
              Text(
                name,
                style: const TextStyle(
                  fontSize: 20, // Ukuran font nama
                  fontWeight: FontWeight.bold, // Menebalkan font nama
                ),
              ),
              const SizedBox(height: 5), // Jarak antara nama dan email
              // Email
              Text(
                email,
                style: TextStyle(
                  fontSize: 16, // Ukuran font email
                  color: Colors.grey[700], // Warna font email
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
