import 'package:bodymassindex/constants.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final IconData iconData;
  final Function buttonFunction;

  RoundedButton({
    this.iconData,
    this.buttonFunction,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: toggledDarkTheme == true
          ? kMainAccentColorDark
          : kMainAccentColorLight,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(width: 40, height: 40),
      child: Icon(
        iconData,
        color: Colors.white,
        size: 35,
      ),
      onPressed: buttonFunction,
    );
  }
}
