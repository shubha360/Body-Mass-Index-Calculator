import 'package:bodymassindex/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bodymassindex/constants.dart';

class GenderCard extends StatelessWidget {
  final IconData icon;
  final String genderName;
  final Function onPressed;
  final Color iconColor;
  final Color textColor;
  final Color cardColor;

  GenderCard({
    this.icon,
    this.genderName,
    this.onPressed,
    this.textColor,
    this.iconColor,
    this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 3),
        padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 5),
        decoration: BoxDecoration(
            color: cardColor,
            borderRadius:
                BorderRadius.circular(SizeConfig.safeBlockHorizontal * 3),
            boxShadow: [
              BoxShadow(
                color:
                    toggledDarkTheme == true ? kCardColorDark : kCardColorLight,
                blurRadius: toggledDarkTheme == true ? 0 : 10,
                offset: Offset(0, 0),
              ),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FaIcon(
              icon,
              size: SizeConfig.safeBlockHorizontal * 18,
              color: iconColor,
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 1,
            ),
            Text(
              '$genderName',
              style: TextStyle(
                color: textColor,
                fontSize: SizeConfig.safeBlockHorizontal * 4,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
