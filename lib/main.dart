import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

// Root widget aplikasi
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contoh Date Picker',
      home: MyHomePage(title: 'Contoh Date Picker'),
    );
  }
}

// Widget halaman utama
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Variable/State untuk menyimpan tanggal yang dipilih
  DateTime selectedDate = DateTime.now();

  // Fungsi untuk menampilkan DatePicker dan mengambil tanggal
  Future<void> _selectDate(BuildContext context) async {
    // Menampilkan date picker
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // tanggal awal
      firstDate: DateTime(2015, 8), // batas awal
      lastDate: DateTime(2101), // batas akhir
    );

    // Jika ada tanggal dipilih dan berbeda dari sebelumnya
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked; // update state
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // Menampilkan tanggal yang dipilih
            Text("${selectedDate.toLocal()}".split(' ')[0]),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                _selectDate(context); // panggil date picker
                // ignore: avoid_print
                print(selectedDate.day + selectedDate.month + selectedDate.year);
              },
              child: const Text('Pilih Tanggal'),
            ),
          ],
        ),
      ),
    );
  }
}
