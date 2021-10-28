import 'package:flutter/material.dart';
import 'package:rhinos_pizzeria/Models/item.dart';

class CartProvider with ChangeNotifier {
  Item? currentItem;
}
