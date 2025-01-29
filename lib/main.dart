import 'package:flutter/material.dart';
import 'package:newsapp/views/HomePage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure all plugins are loaded
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
