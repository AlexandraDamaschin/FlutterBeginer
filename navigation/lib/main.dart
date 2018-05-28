import 'package:flutter/material.dart';

import 'package:navigation/category_route.dart';

//get called when project starts
void main() {
  runApp(UnitConvertorApp());
}
//this widget = root of the app
class UnitConvertorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Convertor',
      //calls the category_route.dart
      home: CategoryRoute(),
    );
  }
}