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
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
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
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                  ),
                ),
                SizedBox(
                  height: margin,
                ),
                Divider(
                  height: 10,
                  color: toggledDarkTheme == true
                      ? kMainAccentColorDark
                      : kMainAccentColorLight,
                  thickness: 3,
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
