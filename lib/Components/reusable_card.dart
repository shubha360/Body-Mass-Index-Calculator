import 'package:bodymassindex/constants.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Widget cardChild;
  final Function function;

  ReusableCard({
    this.cardChild,
    this.function,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: toggledDarkTheme == true ? kCardColorDark : kCardColorLight,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: toggledDarkTheme == true
                      ? Colors.black.withOpacity(0.1)
                      : Colors.grey.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 0,
                  offset: Offset(0, 5))
            ]),
        child: cardChild,
      ),
    );
  }
}
