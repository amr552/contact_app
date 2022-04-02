

import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled/BMIresult.dart';

class BMICalculate extends StatefulWidget {
  @override
  State<BMICalculate> createState() => _BMICalculateState();
}

class _BMICalculateState extends State<BMICalculate> {
  bool ismale=true;
  double Height=120.0;
  int weight=40;
  int age=20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI_Calculate',
        ),
      ),
      body: Column(

        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          ismale=true;
                        });
                      },
                      child: Container(
                        child: Column (
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height :90.0,
                              child: Image(
                                image:AssetImage('assets/images/img.png') ,),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0,),
                          color: ismale ? Colors.blue : Colors.grey[400],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          ismale=false;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height :95.0,
                              child: Image(
                                image: AssetImage('assets/images/Female.png'),
                              ),
                            ),
                            SizedBox(height: 5.0,),
                            Text(
                              'Female',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0,),
                          color: ismale ? Colors.grey[400] : Colors.blue  ,
                        ),

                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey[400],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                            Text(
                              '${Height.round()}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50.0,
                              ),
                            ),
                          SizedBox(width: 5.0,),
                          Container(

                            child: Text(
                              'CM',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Slider(
                          value:Height ,
                          max: 220,
                          min: 80,
                          onChanged:(value){
                            setState(() {
                              Height=value;
                            });
                          })
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                          ),
                          Text(
                            '${weight}',
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  onPressed:(){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                heroTag: 'weight-' ,
                                mini: true,
                              child: Icon(
                                Icons.remove,
                              ),),
                              FloatingActionButton(
                                  onPressed:(){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                heroTag: 'weight+',
                                  mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                          Text(
                            '${age}',
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed:(){
                                  setState(() {
                                    age--;
                                  }

                                  );
                                },
                                heroTag: 'age-',
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                ),),
                              FloatingActionButton(
                                onPressed:(){
                                  setState(() {
                                    age++;
                                  });
                                },
                                heroTag: 'age+',
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.red,
            height: 50.0,
            child: MaterialButton(
              onPressed: () {
                double result=weight/pow(Height/100 ,2);
                print(result.round());

                Navigator.push(
                    context, 
                MaterialPageRoute(
                    builder:(context)=>BMIresult(
                      result: result.round(),
                      age: age,
                      ismale: ismale,

                    ),
                ),
                );
              },
              child: Text(
                'BMI Calculate',
                style: TextStyle(color: Colors.green, fontSize: 20.0),

              ),
            ),
          )
        ],
      ),
    
    );
  }
}
