import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/ufcard.dart';
import '../components/Button_button.dart';
class Result extends StatelessWidget {
  Result({this.resultMassage,this.BMI,this.suggestionMassage});
  String resultMassage;
  String BMI;
  String suggestionMassage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                alignment:Alignment.bottomLeft,
                child: Text('Your Result',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40
                ),),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: ufcard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultMassage,style: TextStyle(color: Colors.orangeAccent,
                  fontSize: 20,fontWeight: FontWeight.bold),),
                  Text(BMI,style: ktextstyle2,),
                  Text(suggestionMassage,style: TextStyle(
                  color: Colors.white,fontSize:20,),
                  textAlign: TextAlign.center,),
                  
                ],
              ),
              Boxcolor: Color(kPressColor),
            ),
          ),
          Expanded(
            child: Button_button(ontap:  () {
              Navigator.pop(context);
            },
              buttontext: 'Return_Calculator' ,),
          ),
        ],
      )
    );
  }
}
