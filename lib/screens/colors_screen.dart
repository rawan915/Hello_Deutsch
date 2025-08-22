import 'package:flutter/material.dart';
import 'package:hello_deutsch/data/colors_list.dart';
import 'package:hello_deutsch/screens/screen_widget.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(barTitle: 'Colors', itemList: colorsList);
  }
}
