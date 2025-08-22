import 'package:flutter/material.dart';
import 'package:hello_deutsch/widgets/appBar_widget.dart';
import 'package:hello_deutsch/widgets/category_widgit.dart';
import 'package:hello_deutsch/data/categories_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "Deutsch", showFlagAndHello: true),
      body: Center(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return CategoryWidget(category: categoryList[index]);
          },
        ),
      ),
    );
  }
}
