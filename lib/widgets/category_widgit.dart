import 'package:flutter/material.dart';
import 'package:hello_deutsch/models/category_model.dart';

class CategoryWidget extends StatelessWidget {
  final CategoryModel category;
  CategoryWidget({required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: () {
          category.navigateToDistenation(context);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: category.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(category.imagePath),
              Text(
                category.categoryTitle,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
