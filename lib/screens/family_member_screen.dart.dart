import 'package:flutter/material.dart';
import 'package:hello_deutsch/data/family_members_list.dart';
import 'package:hello_deutsch/screens/screen_widget.dart';

class FamilyMemberScreen extends StatelessWidget {
  const FamilyMemberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      barTitle: 'Family Members',
      itemList: familyMembersList,
    );
  }
}
