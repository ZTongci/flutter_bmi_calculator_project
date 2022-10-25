import 'dart:math';



class calculator_brain{

  calculator_brain({this.hight,this.weight});

  final int hight;
  final int weight;
  double _BMI;


  String getBMI(){
    _BMI=this.weight/pow(this.hight/100, 2);
    return _BMI.toStringAsFixed(1);
  }

  String getResult(){
    if(_BMI>=25.0){
      return 'OVERWEIGHT';
    }
    else if (_BMI>=18.5){
      return 'NORMAL';
    }
    else{
      return 'UNDERWEIGHT';
    }
  }

  String getMessage(){
    if(_BMI>=25.0){
      return 'You have a higher than nomal body weight. Try to excisemore.';
    }
    else if (_BMI>=18.5){
      return 'You have a normal body weight.Good Job!';
    }
    else{
      return 'You have a lower than normal body weight. You can eat a bit more';
    }
  }
}