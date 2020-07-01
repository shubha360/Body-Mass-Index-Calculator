import 'package:bodymassindex/SizeConfig.dart';
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
      constraints: BoxConstraints.tightFor(
          width: SizeConfig.safeBlockHorizontal * 10,
          height: SizeConfig.safeBlockVertical * 6),
      child: Icon(
        iconData,
        color: Colors.white,
        size: SizeConfig.safeBlockHorizontal * 10,
      ),
      onPressed: buttonFunction,
    );
  }
}
