import 'package:bodymassindex/SizeConfig.dart';
import 'package:bodymassindex/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String buttonText;
  final Function function;

  BottomButton({
    this.buttonText,
    this.function,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        width: double.infinity,
        height: SizeConfig.safeBlockVertical * 7.5,
        color: toggledDarkTheme == true
            ? kMainAccentColorDark
            : kMainAccentColorLight,
        alignment: FractionalOffset.bottomCenter,
        child: Center(
          child: Text(
            '$buttonText',
            style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.safeBlockHorizontal * 5,
              fontWeight: FontWeight.bold,
              letterSpacing: SizeConfig.safeBlockHorizontal * 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
