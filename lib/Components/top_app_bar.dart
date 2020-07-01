import 'package:bodymassindex/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:bodymassindex/constants.dart';

class TopAppBar extends StatelessWidget {
  final String titleText;
  final double margin;
  final double dividerEndIndent;
  final Function switchFunction;

  TopAppBar({
    @required this.titleText,
    this.margin,
    this.dividerEndIndent,
    this.switchFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color:
          toggledDarkTheme == true ? kTopAppBarColorDark : kTopAppBarColorLight,
      padding: EdgeInsets.fromLTRB(
          SizeConfig.safeBlockHorizontal * 5,
          SizeConfig.safeBlockVertical * 2,
          SizeConfig.safeBlockHorizontal * 5,
          0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  '$titleText',
                  style: TextStyle(
                    color:
                        toggledDarkTheme == true ? Colors.white : Colors.black,
                    fontSize: SizeConfig.safeBlockHorizontal * 8,
                    fontWeight: FontWeight.bold,
                    letterSpacing: SizeConfig.safeBlockHorizontal * .60,
                  ),
                ),
                SizedBox(
                  height: margin,
                ),
                Divider(
                  height: SizeConfig.safeBlockVertical * 1,
                  color: toggledDarkTheme == true
                      ? kMainAccentColorDark
                      : kMainAccentColorLight,
                  thickness: SizeConfig.safeBlockVertical * .40,
                  endIndent: dividerEndIndent,
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Toggle dark mode : ',
                  style: TextStyle(
                      color: toggledDarkTheme == true
                          ? kNormalTextColorDark
                          : kNormalTextColorLight),
                ),
                Switch(
                  activeTrackColor: toggledDarkTheme == true
                      ? kMainAccentColorDark.withOpacity(.8)
                      : kMainAccentColorLight,
                  inactiveThumbColor: toggledDarkTheme == true
                      ? kMainAccentColorDark
                      : Colors.white,
                  activeColor: kMainAccentColorDark,
                  value: toggledDarkTheme,
                  onChanged: switchFunction,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
