import 'package:baggy/utils/constanst.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ColorDot extends StatelessWidget {
  ColorDot({super.key, required this.color, required this.isSelected});
  final Color color;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: KDefaultPadding / 4, right: KDefaultPadding / 2),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: isSelected ? color : Colors.transparent)),
      child: DecoratedBox(
          decoration: BoxDecoration(shape: BoxShape.circle, color: color)),
    );
  }
}
