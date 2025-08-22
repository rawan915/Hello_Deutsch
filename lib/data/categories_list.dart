import 'dart:ui';

import 'package:hello_deutsch/models/category_model.dart';
import 'package:hello_deutsch/screens/animals_screen.dart';
import 'package:hello_deutsch/screens/colors_screen.dart';
import 'package:hello_deutsch/screens/family_member_screen.dart.dart';
import 'package:hello_deutsch/screens/food_drinks_screen.dart';
import 'package:hello_deutsch/screens/numbers_screen.dart';
import 'package:hello_deutsch/screens/quiz_screen.dart';

final List<CategoryModel> categoryList = [
  CategoryModel(
    imagePath: 'assets/images/app_icons/ic_animals.png',
    categoryTitle: 'Animals',
    color: Color(0xfff6e0b5),
    distance: AnimalsScreen(),
  ),
  CategoryModel(
    imagePath: 'assets/images/app_icons/ic_colors.png',
    categoryTitle: 'Colors',
    color: Color(0xfffde2e2),
    distance: ColorsScreen(),
  ),
  CategoryModel(
    imagePath: 'assets/images/app_icons/ic_family_members.png',
    categoryTitle: 'Family Members',
    color: Color(0xffdbeafe),
    distance: FamilyMemberScreen(),
  ),
  CategoryModel(
    imagePath: 'assets/images/app_icons/ic_food_drinks.png',
    categoryTitle: 'Food & Drinks',
    color: Color(0xfffef9c3),
    distance: FoodDrinksScreen(),
  ),
  CategoryModel(
    imagePath: 'assets/images/app_icons/ic_numbers.png',
    categoryTitle: 'Numbers',
    color: Color(0xffdcfce7),
    distance: NumbersScreen(),
  ),
  CategoryModel(
    imagePath: 'assets/images/app_icons/quiz_icon.png',
    categoryTitle: 'Quick Quiz',
    color: Color(0xfffbcfe8),
    distance: QuizScreen(),
  ),
];
