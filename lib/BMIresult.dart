import 'package:flutter/material.dart';
import 'package:untitled/BMICalculate.dart';

class BMIresult extends StatelessWidget {
  final int  result;
  final int age;
final bool ismale;

BMIresult({
  required this.result,
  required this.age,
    required this.ismale,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
          ),
        ),
        title: Text(
          'BMI Result',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Gender : ${ismale  ? 'Male' : 'Female' }',
            style: TextStyle(
                fontWeight:FontWeight.bold,
            fontSize: 25.0,),),
            Text(
              'Result : $result',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Age : $age',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
