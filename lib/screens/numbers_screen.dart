import 'package:flutter/material.dart';
import 'package:hello_deutsch/data/numbers_list.dart';
import 'package:hello_deutsch/screens/screen_widget.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(barTitle: 'Numbers', itemList: numbersList);
  }
}
