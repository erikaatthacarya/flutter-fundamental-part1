import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Root widget aplikasi
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Contoh TextField"), // Judul AppBar
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: TextField(
            obscureText: false, // Tidak menyembunyikan teks
            decoration: InputDecoration(
              border: OutlineInputBorder(), // Border kotak
              labelText: 'Nama', // Label untuk TextField
            ),
          ),
        ),
      ),
    );
  }
}
