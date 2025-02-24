import 'package:examen_final_reyes/model/progLang.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class provider extends ChangeNotifier {
  final String _baseUrl = 'https://ca3f330c47d5efb99e08.free.beeceptor.com/api/proglang/';

   Future<void> getProg() async {
    final url = Uri.https(_baseUrl);

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final responseData = ProgLang.fromRawJson(response.body);
        notifyListeners();
      } else {
        throw Exception('Error al obtener los sets disponibles.');
      }
    } catch (e) {
      print('Error al obtener los sets disponibles: $e');
    }
  }
}