import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil('/login',
                      (Route<dynamic> route) => false),
            ),
          ],
      ),
    );
  }
}