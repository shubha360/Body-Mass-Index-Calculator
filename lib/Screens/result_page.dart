import 'package:bodymassindex/SizeConfig.dart';
import 'package:bodymassindex/constants.dart';
import 'package:bodymassindex/Components/top_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:bodymassindex/Components/bottom_button.dart';
import 'package:bodymassindex/Components/reusable_card.dart';
import 'package:flutter/services.dart';

class ResultPage extends StatefulWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultPage({this.bmiResult, this.resultText, this.interpretation});

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: toggledDarkTheme == true
            ? kTopAppBarColorDark
            : kTopAppBarColorLight,
        statusBarIconBrightness:
            toggledDarkTheme == true ? Brightness.light : Brightness.dark,
      ),
    );
    return Scaffold(
      backgroundColor: toggledDarkTheme == true
          ? kScaffoldBackgroundColorDark
          : kScaffoldBackgroundColorLight,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TopAppBar(
              titleText: 'Result',
              margin: SizeConfig.safeBlockVertical * 1,
              dividerEndIndent: SizeConfig.safeBlockHorizontal * 62,
              switchFunction: (newValue) {
                setState(() {
                  toggledDarkTheme = newValue;
                });
              },
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '${widget.resultText}',
                      style: TextStyle(
                        color: toggledDarkTheme
                            ? kNormalTextColorDark
                            : kNormalTextColorLight,
                        fontSize: SizeConfig.safeBlockHorizontal * 5,
                        fontWeight: FontWeight.bold,
                        letterSpacing: SizeConfig.safeBlockHorizontal * 1,
                      ),
                    ),
                    Text(
                      '${widget.bmiResult}',
                      style: TextStyle(
                        color: toggledDarkTheme == true
                            ? kLargeTextColorDark
                            : kLargeTextColorLight,
                        fontSize: SizeConfig.safeBlockHorizontal * 30,
                      ),
                    ),
                    Text(
                      '${widget.interpretation}',
                      style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal * 5,
                        color: toggledDarkTheme
                            ? kNormalTextColorDark
                            : kNormalTextColorLight,
                      ),
                    )
                  ],
                ),
              ),
            ),
            BottomButton(
                buttonText: 'RE-CALCULATE',
                function: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
