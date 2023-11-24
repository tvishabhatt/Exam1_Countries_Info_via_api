import 'dart:convert';

import 'package:adv_exam1/Countrysmodal.dart';
import 'package:adv_exam1/HomePage.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
class CountryProvider extends ChangeNotifier{

  List<Countrysmodal> countries = [];

  Future<void> fetchCountries() async {
    final response = await http.get(Uri.parse('https://restcountries.com/v3.1/name/$SelectedcountryName'));


    if (response.statusCode == 200) {
      print(response.body);
      final List<dynamic> data = json.decode(response.body);
      countries = data.map((json) => Countrysmodal.fromJson(json)).toList();

      notifyListeners();
    } else {
      throw Exception('Failed to load countries');
    }
  }

}