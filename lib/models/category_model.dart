import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryModel {
  final String imagePath;
  final String categoryTitle;
  final Color color;
  final Widget distance;
  //final Widget distenationPage;
  const CategoryModel({
    required this.imagePath,
    required this.categoryTitle,
    required this.color,
    required this.distance,
    //required this.distenationPage,
  });

  void navigateToDistenation(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => distance));
  }
}
