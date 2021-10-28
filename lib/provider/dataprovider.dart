import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rhinos_pizzeria/Models/userModel.dart';
import 'package:rhinos_pizzeria/constent.dart';
import 'package:rhinos_pizzeria/provider/dataModel.dart';

class DataProviderr with ChangeNotifier {
  List<DataModel> listItem = [];
  List<Userr> listUsers = [];

  DataProviderr() {
    getItem();
    getData();
  }

  void getItem() async {
    var response = await http.get(Uri.parse(
        ''));
    var jsonString = json.decode(response.body) as Map<String, dynamic>;

    for (var x in jsonString.keys) {
      listItem.add(DataModel.fromJson(jsonString[x]));
    }
    notifyListeners();
  }

 

  getData() async {
    var response;
    try {
      var response = await http.get(Uri.parse('$kBaseURL/Users.json'));
      var responseBody = json.decode(response.body) as Map<String, dynamic>;
      for (var item in responseBody.keys) {
        listUsers.add(Userr.fromJson(responseBody[item]));
        notifyListeners();
      }
    } catch (ex) {}
    return response;
  }
}
