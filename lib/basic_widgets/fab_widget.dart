import 'package:flutter/material.dart';

// Langkah 2: Floating Action Button (FAB)
class MyFabWidget extends StatelessWidget {
  const MyFabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // jangan buat MaterialApp baru di sini
    // karena sudah ada di main.dart
    return FloatingActionButton(
      onPressed: () {
        // Add your onPressed code here!
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Kamu menekan tombol!')),
        );
      },
      backgroundColor: Colors.pink,
      child: const Icon(Icons.thumb_up),
    );
  }
}
