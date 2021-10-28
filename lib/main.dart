import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rhinos_pizzeria/provider/dataprovider.dart';
import 'package:rhinos_pizzeria/services/google_login/googleSignIn.dart';

import 'Routes/routes.dart';

void main() {
  runApp( ChangeNotifierProvider(
      create: (_) => DataProviderr(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rhino's Pizzeria",
      home: SignIng(),
       routes: routes,
      debugShowCheckedModeBanner: false,
      );
     
  }
}

