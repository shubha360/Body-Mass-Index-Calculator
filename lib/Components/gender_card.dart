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
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color:
                    toggledDarkTheme == true ? kCardColorDark : kCardColorLight,
                blurRadius: toggledDarkTheme == true ? 0 : 10,
                spreadRadius: 0,
                offset: Offset(0, 0),
              ),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FaIcon(
              icon,
              size: 70,
              color: iconColor,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '$genderName',
              style: TextStyle(
                color: textColor,
                fontSize: 15,
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
