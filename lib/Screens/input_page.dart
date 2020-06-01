import 'package:bodymassindex/Screens/result_page.dart';
import 'package:bodymassindex/calculator_brain.dart';
import 'package:bodymassindex/constants.dart';
import 'package:bodymassindex/Components/gender_card.dart';
import 'package:bodymassindex/Components/reusable_card.dart';
import 'package:bodymassindex/Components/rounded_button.dart';
import 'package:bodymassindex/Components/top_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bodymassindex/Components/bottom_button.dart';
import 'package:bodymassindex/Components/gender_card.dart';
import 'package:flutter/services.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int defaultHeight = 65;
  int defaultWeight = 50;
  int defaultAge = 22;

  bool newValue = true;

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TopAppBar(
              titleText: 'Body Mass Index Calculator',
              margin: 10,
              dividerEndIndent: 70,
              switchFunction: (newValue) {
                setState(() {
                  toggledDarkTheme = newValue;
                });
              },
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: GenderCard(
                        onPressed: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                        genderName: 'MALE',
                        icon: FontAwesomeIcons.mars,
                        iconColor: toggledDarkTheme == true
                            ? (selectedGender == Gender.male
                                ? Colors.white
                                : kMainAccentColorDark)
                            : (selectedGender == Gender.male
                                ? Colors.white
                                : kMainAccentColorLight),
                        textColor: toggledDarkTheme == true
                            ? (selectedGender == Gender.male
                                ? kNormalTextColorDark
                                : kNormalTextColorDark)
                            : (selectedGender == Gender.male
                                ? kNormalTextColorDark
                                : kNormalTextColorLight),
                        cardColor: toggledDarkTheme == true
                            ? (selectedGender == Gender.male
                                ? kMainAccentColorDark
                                : kCardColorDark)
                            : (selectedGender == Gender.male
                                ? kMainAccentColorLight
                                : kCardColorLight),
                      ),
                    ),
                    Expanded(
                      child: GenderCard(
                        onPressed: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        genderName: 'FEMALE',
                        icon: FontAwesomeIcons.venus,
                        iconColor: toggledDarkTheme == true
                            ? (selectedGender == Gender.female
                                ? Colors.white
                                : kMainAccentColorDark)
                            : (selectedGender == Gender.female
                                ? Colors.white
                                : kMainAccentColorLight),
                        textColor: toggledDarkTheme == true
                            ? (selectedGender == Gender.female
                                ? kNormalTextColorDark
                                : kNormalTextColorDark)
                            : (selectedGender == Gender.female
                                ? kNormalTextColorDark
                                : kNormalTextColorLight),
                        cardColor: toggledDarkTheme == true
                            ? (selectedGender == Gender.female
                                ? kMainAccentColorDark
                                : kCardColorDark)
                            : (selectedGender == Gender.female
                                ? kMainAccentColorLight
                                : kCardColorLight),
                      ),
                    ),
                  ],
                ),
                ReusableCard(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          color: toggledDarkTheme == true
                              ? kNormalTextColorDark
                              : kNormalTextColorLight,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '$defaultHeight',
                            style: TextStyle(
                              color: toggledDarkTheme == true
                                  ? kMainAccentColorDark
                                  : kMainAccentColorLight,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'inch',
                            style: TextStyle(
                              color: toggledDarkTheme
                                  ? kNormalTextColorDark
                                  : kNormalTextColorLight,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        value: defaultHeight.toDouble(),
                        activeColor: toggledDarkTheme == true
                            ? kMainAccentColorDark
                            : kMainAccentColorLight,
                        inactiveColor: kScaffoldBackgroundColorLight,
                        min: 10,
                        max: 100,
                        onChanged: (double newHeight) {
                          setState(() {
                            defaultHeight = newHeight.round();
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                              color: toggledDarkTheme == true
                                  ? kNormalTextColorDark
                                  : kNormalTextColorLight,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                '$defaultWeight',
                                style: TextStyle(
                                  color: toggledDarkTheme == true
                                      ? kMainAccentColorDark
                                      : kMainAccentColorLight,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'kg',
                                style: TextStyle(
                                  color: toggledDarkTheme
                                      ? kNormalTextColorDark
                                      : kNormalTextColorLight,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              RoundedButton(
                                iconData: Icons.remove,
                                buttonFunction: () {
                                  setState(() {
                                    defaultWeight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundedButton(
                                iconData: Icons.add,
                                buttonFunction: () {
                                  setState(() {
                                    defaultWeight++;
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: TextStyle(
                              color: toggledDarkTheme == true
                                  ? kNormalTextColorDark
                                  : kNormalTextColorLight,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                '$defaultAge',
                                style: TextStyle(
                                  color: toggledDarkTheme == true
                                      ? kMainAccentColorDark
                                      : kMainAccentColorLight,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'years',
                                style: TextStyle(
                                  color: toggledDarkTheme
                                      ? kNormalTextColorDark
                                      : kNormalTextColorLight,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              RoundedButton(
                                iconData: Icons.remove,
                                buttonFunction: () {
                                  setState(() {
                                    defaultAge--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundedButton(
                                iconData: Icons.add,
                                buttonFunction: () {
                                  setState(() {
                                    defaultAge++;
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            BottomButton(
              buttonText: 'CALCULATE',
              function: () {
                CalculatorBrain calc = CalculatorBrain(
                    heightInInch: defaultHeight, weightInKg: defaultWeight);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                              bmiResult: calc.bmiCalculator(),
                              resultText: calc.getResult(),
                              interpretation: calc.getInterpretation(),
                            )));
              },
            ),
          ],
        ),
      ),
    );
  }
}
