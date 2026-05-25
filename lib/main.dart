import 'package:flutter/material.dart';

void main() {
  runApp(const CanvasStudioApp());
}

class CanvasStudioApp extends StatelessWidget {
  const CanvasStudioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Canvas Studio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Center(
          child: Text(
            'Canvas Studio',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
