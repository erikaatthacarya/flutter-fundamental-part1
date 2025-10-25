import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Root widget aplikasi
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyLayout(),
      ),
    );
  }
}

// Widget utama yang menampilkan tombol
class MyLayout extends StatelessWidget {
  const MyLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        child: const Text('Show alert'), // Tombol untuk menampilkan dialog
        onPressed: () {
          showAlertDialog(context); // Panggil fungsi menampilkan dialog
        },
      ),
    );
  }
}

// Fungsi untuk menampilkan AlertDialog
showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.pop(context); // Tutup dialog saat OK ditekan
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("My title"),
    content: const Text("This is my message."),
    actions: [
      okButton, // Tambahkan tombol OK ke dialog
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert; // Tampilkan AlertDialog
    },
  );
}
