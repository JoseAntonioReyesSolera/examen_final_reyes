import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  // Recupera los datos guardados en SharedPreferences
  Future<Map<String, dynamic>> getPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map<String, dynamic> prefsData = {
      'name': prefs.getString('name'),
      'password': prefs.getString('password'),
    };
    return prefsData;
  }

  // Guarda los datos en SharedPreferences
  Future<void> savePreferences(String name, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('name', name);
    prefs.setString('password', password);
  }
}