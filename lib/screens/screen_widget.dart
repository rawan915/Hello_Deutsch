import 'package:flutter/material.dart';
import 'package:hello_deutsch/models/item_model.dart';
import 'package:hello_deutsch/widgets/appBar_widget.dart';
import 'package:hello_deutsch/widgets/item_widget.dart';

class ScreenWidget extends StatelessWidget {
  final String barTitle;
  final List<ItemModel> itemList;
  const ScreenWidget({
    super.key,
    required this.barTitle,
    required this.itemList,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: barTitle, showFlagAndHello: false),
      body: ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (_, index) => ItemWidget(itemModel: itemList[index]),
      ),
    );
  }
}
