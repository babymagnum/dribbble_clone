import 'package:flutter/material.dart';

class CustomMaterial extends StatelessWidget {

  CustomMaterial({Key key,
    @required this.color,
    @required this.borderRadiusGeometry,
    @required this.child,
    @required this.onTap
  });

  Color color;
  BorderRadiusGeometry borderRadiusGeometry;
  Widget child;
  Function onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadiusGeometry
      ),
      child: InkWell(
        onTap: onTap,
        child: child,
      ),
    );
  }
}
