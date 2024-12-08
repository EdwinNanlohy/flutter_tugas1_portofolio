// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kamus Sederhana',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: KamusPage(),
    );
  }
}

class KamusPage extends StatefulWidget {
  @override
  _KamusPageState createState() => _KamusPageState();
}

class _KamusPageState extends State<KamusPage> {
  final Map<String, String> kamus = {
    "hello": "Halo",
    "world": "Dunia",
    "flutter": "Framework untuk membuat aplikasi mobile",
    "dart": "Bahasa pemrograman yang digunakan oleh Flutter",
    // Tambahkan lebih banyak entri di sini...
  };

  final TextEditingController controller = TextEditingController();
  String? definisi;

  void _cariDefinisi(String kata) {
    setState(() {
      definisi = kamus[kata.toLowerCase()];
    });
    if (definisi == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Tidak ditemukan')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kamus Sederhana")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Masukkan kata",
                border: OutlineInputBorder(),
              ),
              controller: controller,
              onSubmitted: (value) {
                _cariDefinisi(value);
              },
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                _cariDefinisi(controller.text);
              },
              child: Text("Cari"),
            ),
            SizedBox(height: 20),
            if (definisi != null)
              Text(
                'Definisi: $definisi',
                style: TextStyle(fontSize: 18),
              ),
          ],
        ),
      ),
    );
  }
}