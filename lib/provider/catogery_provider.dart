import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:rhinos_pizzeria/Models/category.dart';

import '../constent.dart';

class CategoresProviders with ChangeNotifier {
  bool isinitiated = false;
  List<Categori> categores = [];

  Future<dynamic> getCategores() async {
    var res = await http.get(Uri.parse('$kBaseURL/Categori.json'));
    var jasontoString = json.decode(res.body);
    for (var x in jasontoString) {
      categores.add(Categori.fromjson(x));
      notifyListeners();
    }
  }
}
