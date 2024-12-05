import 'package:flutter/material.dart';
import 'package:flutter_project_si5b/models/candi.dart';
import 'package:flutter_project_si5b/screens/detail_screen.dart';
import 'package:flutter_project_si5b/screens/main_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainScreen(),
      onGenerateRoute: (settings) {
        if (settings.name == '/detail') {
          final varCandi = settings.arguments as Candi;
          return MaterialPageRoute(
              builder: (context) => DetailScreen(varCandi: varCandi));
        }
        return null;
      },
    );
  }
}
