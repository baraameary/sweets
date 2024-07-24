import 'package:flutter/material.dart';
import 'package:sweet_store/bransh.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: bransh(),
      ),
    );
  }
}