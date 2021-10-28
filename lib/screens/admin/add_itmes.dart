import 'package:flutter/material.dart';
import 'package:rhinos_pizzeria/Models/item.dart';
import 'package:rhinos_pizzeria/Models/item_option.dart';

import '../../constent.dart';
import '../../size_config.dart';

class Additme extends StatefulWidget {
  const Additme({Key? key}) : super(key: key);

  @override
  _AdditmeState createState() => _AdditmeState();
}

class _AdditmeState extends State<Additme> {
  final _imageURL = TextEditingController();
  final _name = TextEditingController();
  final _priceToAdd = TextEditingController();
  final _details = TextEditingController();
  final _price = TextEditingController();
  final _category = TextEditingController();
  final _subCateogoryId = TextEditingController();
 

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          TextFormField(
            controller: _imageURL,
            decoration: InputDecoration(
                hintText: "imageURL*",
                filled: true,
                labelText: "imageURL",
                border: OutlineInputBorder(),
                icon: Icon(
                  Icons.panorama,
                  color: kSecondaryColor,
                )),
          ),
          SizedBox(
            height: 24,
          ),
          TextFormField(
            controller: _name,
            decoration: InputDecoration(
                hintText: "name*",
                filled: true,
                labelText: "name",
                border: OutlineInputBorder(),
                icon: Icon(
                  Icons.local_pizza_outlined,
                  color: kSecondaryColor,
                )),
          ),
          SizedBox(
            height: 24,
          ),
          TextFormField(
            controller: _priceToAdd,
            decoration: InputDecoration(
                hintText: "priceToAdd*",
                filled: true,
                labelText: "priceToAdd",
                border: OutlineInputBorder(),
                icon: Icon(
                  Icons.price_check_sharp,
                  color: kSecondaryColor,
                )),
          ),
          SizedBox(
            height: 24,
          ),
          TextFormField(
            controller: _details,
            decoration: InputDecoration(
                hintText: "details*",
                filled: true,
                labelText: "details",
                border: OutlineInputBorder(),
                icon: Icon(
                  Icons.details,
                  color: kSecondaryColor,
                )),
          ),
          SizedBox(
            height: 24,
          ),
          TextFormField(
            controller: _price,
            decoration: InputDecoration(
                hintText: "price*",
                filled: true,
                labelText: "price",
                border: OutlineInputBorder(),
                icon: Icon(
                  Icons.local_offer_rounded,
                  color: kSecondaryColor,
                )),
          ),
          SizedBox(
            height: 24,
          ),
          TextFormField(
            controller: _category,
            decoration: InputDecoration(
                hintText: "category*",
                filled: true,
                labelText: "category",
                border: OutlineInputBorder(),
                icon: Icon(
                  Icons.category,
                  color: kSecondaryColor,
                )),
          ),
          SizedBox(
            height: 24,
          ),
          TextFormField(
            controller: _subCateogoryId,
            decoration: InputDecoration(
                hintText: "subCateogoryId*",
                filled: true,
                labelText: "subCateogoryId",
                border: OutlineInputBorder(),
                icon: Icon(
                  Icons.category_outlined,
                  color: kSecondaryColor,
                )),
          ),
          SizedBox(
            height: 24,
          ),
          OutlinedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                      (states) => kSecondaryColor)),
              onPressed: () {
                },
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: kScaffoldColor,
                  fontSize: 20,
                ),
              )),
        ],
      )),
    );
  }
}
