import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.OnPress});
  final IconData? icon;
  final Function()? OnPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: OnPress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
