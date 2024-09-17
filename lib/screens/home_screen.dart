import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.account_box, // Ikon untuk Penerima CV
              size: 100.0,
              color: Colors.blueAccent,
            ),
            SizedBox(height: 20.0), // Memberikan jarak antara ikon dan teks
            Text(
              'Penerima CV',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
            ),
            SizedBox(
                height: 20.0), // Memberikan jarak antara teks dan deskripsi
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.upload_file, // Ikon untuk pengumpulan CV
                  size: 40.0,
                  color: Colors.green,
                ),
                SizedBox(width: 10.0), // Memberikan jarak antara ikon dan teks
                Text(
                  'Silahkan Kumpulkan CV Disini.',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.black54,
                        fontSize: 18.0,
                      ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
