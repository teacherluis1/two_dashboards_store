import 'package:almacen/widgets.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false; // Variable para controlar el modo oscuro


    void toggleDarkMode(bool value) {
    setState(() {
      isDarkMode = value;
    });
  }






  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,


theme: isDarkMode
          ? ThemeData.dark()
          : ThemeData(
  colorScheme: ColorScheme(
    primary: Color(0xFF8C1D1A), // Variante más oscura del color principal
    secondary: Color(0xFFF5A623), // Variante más oscura del color secundario
    surface: Colors.white, // Color para superficies como `Cards`
    onPrimary: Colors.white, // Color de texto en elementos primarios
    onSecondary: Colors.black, // Color de texto en elementos secundarios
    onBackground: Colors.black, // Color de texto en fondo
    onSurface: Colors.black, // Color de texto en superficies
    onError: Colors.white, // Color de texto en errores
    error: Colors.red, // Color para mostrar errores
    brightness: Brightness.light, // Define si el tema es claro u oscuro
  ),

appBarTheme: AppBarTheme(
    color: Color(0xFF8C1D1A), // Color del AppBar
    iconTheme: IconThemeData(color: Colors.white), // Color de íconos en el AppBar
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold), // Color y estilo del título
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF8C1D1A),
    selectedItemColor: Color(0xFFF5A623), // Color del ítem seleccionado
    unselectedItemColor: Colors.white70, // Color del ítem no seleccionado
  ),
  // Otras configuraciones de ThemeData
),
















      home: MainWidget(
        isDarkMode: isDarkMode,
        toggleDarkMode: toggleDarkMode,
      



      ),

    );
  }
}