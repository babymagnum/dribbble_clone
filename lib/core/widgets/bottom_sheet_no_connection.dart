import 'package:division/division.dart';
import 'package:flutter/material.dart';

class BottomSheetNoConnection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Parent(
      style: ParentStyle()
        ..borderRadius(topRight: 10, topLeft: 10)
        ..background.color(Colors.white)
        ..padding(all: 10)
      ,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Text("test bottom sheet connectivity"),
      )
    );
  }
}
