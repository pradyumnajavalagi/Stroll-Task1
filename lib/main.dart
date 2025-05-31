import 'package:flutter/material.dart';
import 'features/bonfire/bonfire_screen.dart';
import 'core/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stroll UI Task',
      theme: AppTheme.darkTheme,
      home: const BonfireScreen(),
    );
  }
}
