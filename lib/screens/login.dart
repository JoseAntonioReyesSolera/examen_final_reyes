import 'package:examen_final_reyes/preferences/preferences.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _loadPreferences();
  }

  _loadPreferences() async {
    var prefs = await Preferences().getPreferences();
    setState(() {
      nameController.text = prefs['name'] ?? '';
      passwordController.text = prefs['lastName'] ?? '';
    });
  }

    _onNameChanged() {
    Preferences().savePreferences(
      nameController.text,
      passwordController.text,
    );
  }

  _onPasswordChanged() {
    Preferences().savePreferences(
      nameController.text,
      passwordController.text,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Nombre'),
              onChanged: (text) {
                _onNameChanged();
              },
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Contraseña'), obscureText: true,
              onChanged: (text) {
                _onPasswordChanged();
              },
            ),
            if (.isNotEmpty && password.isNotEmpty) {
          }
          ],
        ),
      ),
    );
  }
}