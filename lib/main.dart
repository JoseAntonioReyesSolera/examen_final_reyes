import 'package:examen_final_reyes/screens/homescreen.dart';
import 'package:examen_final_reyes/screens/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lenguajes de Programacion',
      // dirje directamente al log in
      home:
        Login(),
        
      // rutas utiles
      routes: {
        '/home': (context) => Homescreen(),
        '/login': (context) => Login(),
      }
    );
  }
}
