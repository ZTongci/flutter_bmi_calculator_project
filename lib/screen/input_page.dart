import 'package:flutter_bmi_calculator_project/calculator_brain.dart';

import '../components/iccontent.dart';
import '../components/ufcard.dart';
import 'package:flutter/material.dart';
import 'package:awesome_icons/awesome_icons.dart';
import '../constants.dart';
import '../screen/result_calculator.dart';
import '../components/Button_button.dart';

enum genders { Male, Female }

iccontent icct = iccontent();
ufcard ufcd = ufcard();

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  genders Selectgender;
  int age = 18;
  int hight = 180;
  int weight = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kTexttile),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ufcard(
                      child: iccontent(
                        fontIcons: FontAwesomeIcons.mars,
                        textIcons: 'Male',
                      ),
                      Boxcolor: Selectgender == genders.Male
                          ? Color(kPressColor)
                          : Color(knoPressColor),
                      Judge: () {
                        setState(() {
                          Selectgender = genders.Male;
                        });
                      }),
                ),
                Expanded(
                  child: ufcard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        iccontent(
                          fontIcons: FontAwesomeIcons.venus,
                          textIcons: 'Female',
                        ),
                      ],
                    ),
                    Boxcolor: Selectgender == genders.Female
                        ? Color(kPressColor)
                        : Color(knoPressColor),
                    Judge: () {
                      setState(() {
                        Selectgender = genders.Female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ufcard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HIGHT',
                    style: ktextstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(this.hight.toString(), style: ktextstyle2),
                      Text('cm', style: ktextstyle),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                      activeTrackColor: Color(0xffEB1555),
                      inactiveTickMarkColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x50EB1555),
                    ),
                    child: Slider(
                      value: this.hight.toDouble(),
                      onChanged: (double hight) {
                        setState(() {
                          this.hight = hight.toInt();
                        });
                      },
                      max: 220.0,
                      min: 120.0,
                    ),
                  )
                ],
              ),
              Boxcolor: Color(kPressColor),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ufcard(
                      Boxcolor: Color(kPressColor),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: ktextstyle,
                          ),
                          Text(
                            this.weight.toString(),
                            style: ktextstyle2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    this.weight = this.weight + 1;
                                  });
                                },
                                backgroundColor: Color(0xFFEB1555),
                                elevation: 0,
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    this.weight = this.weight - 1;
                                  });
                                },
                                backgroundColor: Color(0xFFEB1555),
                                elevation: 0,
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
                Expanded(
                  child: ufcard(
                      Boxcolor: Color(kPressColor),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: ktextstyle,
                          ),
                          Text(
                            age.toString(),
                            style: ktextstyle2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                backgroundColor: Color(0xFFEB1555),
                                elevation: 0,
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                backgroundColor: Color(0xFFEB1555),
                                elevation: 0,
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
          Button_button(
            ontap: () {
              calculator_brain Human =
                  calculator_brain(hight: this.hight, weight: this.weight);
              Human.getBMI();
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Result(
                    resultMassage: Human.getResult(),
                    BMI: Human.getBMI(),
                    suggestionMassage: Human.getMessage());
              }));
            },
            buttontext: 'Calculator',
          ),
        ],
      ),
    );
  }
}
