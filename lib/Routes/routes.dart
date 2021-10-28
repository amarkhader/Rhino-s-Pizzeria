import 'package:flutter/material.dart';
import 'package:rhinos_pizzeria/screens/login/adminlogin.dart';
import 'package:rhinos_pizzeria/screens/login/login.dart';
import 'package:rhinos_pizzeria/screens/signup/adminsignup.dart';
import 'package:rhinos_pizzeria/screens/signup/signup_screen.dart';
import 'package:rhinos_pizzeria/services/google_login/googleSignIn.dart';

final Map<String, WidgetBuilder> routes = {
  SignUpScreen.namedRoute: (ctx) => SignUpScreen(),
  LoginScreen.namedRoute: (ctx) => LoginScreen(),
  AdminSignUp.namedRoute: (ctx) => AdminSignUp(),
  AdminLogin.namedRoute: (ctx) => AdminLogin(),
  SignIng.namedRoute: (ctx)=>SignIng(),
};
