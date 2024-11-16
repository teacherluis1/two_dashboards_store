import 'package:flutter/material.dart';
import 'package:grid3/grid3.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false; // Estado para alternar entre claro y oscuro

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(), // Cambiar tema
      home: Grid3(
        isDarkMode: _isDarkMode,
        onThemeChanged: (bool value) {
          setState(() {
            _isDarkMode = value; // Actualiza el estado del tema
          });
        },
      ),
    );
  }
}