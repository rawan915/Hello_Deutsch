import 'package:flutter/material.dart';
import 'package:hello_deutsch/data/animals_list.dart';
import 'package:hello_deutsch/screens/screen_widget.dart';

class AnimalsScreen extends StatelessWidget {
  const AnimalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(barTitle: 'Animals', itemList: animalsList);
  }
}
