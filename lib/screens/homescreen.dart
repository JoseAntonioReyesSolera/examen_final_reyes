import 'package:examen_final_reyes/model/progLang.dart';
import 'package:examen_final_reyes/provider/provider.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
//  List<ProgLang> list = provider.getProg;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          // boton para cerrar la sesion
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil('/login',
                      (Route<dynamic> route) => false),
            ),
          ],
      ),
      body: ListView(
        
      )
    );
  }
}