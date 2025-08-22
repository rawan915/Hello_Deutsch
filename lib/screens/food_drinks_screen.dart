import 'package:flutter/material.dart';
import 'package:hello_deutsch/data/food_drinks_list.dart';
import 'package:hello_deutsch/screens/screen_widget.dart';

class FoodDrinksScreen extends StatelessWidget {
  const FoodDrinksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(barTitle: 'Food & Drinks', itemList: foodDrinksList);
  }
}
