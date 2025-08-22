import 'package:flutter/material.dart';
import 'package:hello_deutsch/models/item_model.dart';

class ItemWidget extends StatelessWidget {
  final ItemModel itemModel;
  const ItemWidget({super.key, required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: Image.asset(
          itemModel.image,
          height: 80,
          width: 70,
          fit: BoxFit.fill,
        ),
        title: Text(itemModel.engText, style: TextStyle(fontSize: 25)),
        subtitle: Text(itemModel.germText, style: TextStyle(fontSize: 20)),
        trailing: IconButton(
          onPressed: () {
            itemModel.playSound();
          },
          icon: Icon(Icons.play_arrow, size: 40),
        ),
      ),
    );
  }
}
