import 'package:flutter/material.dart';
// stateless contain one class provide widget

//state ful contain classes
//1. first class provide widget
// 2. second class provide the state this widget


class Counter_Screen extends StatefulWidget
{
  @override
  State<Counter_Screen> createState() => _Counter_ScreenState();
}// here we recall the widget every time you press

class _Counter_ScreenState extends State<Counter_Screen> {
 int counter =1;
//1.constractor
// 2.initstate
// 3.build
@override
  void initState() { // that is intial state to all other states

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(
          'Counter',
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                  TextButton(
                    onPressed: (){
                      setState(() { //when you press on the buttom rebuild the build
                        counter--;
                        print(counter);

                      });
                   }, child:Text(
                  'MINUS',
                  style: TextStyle(color: Colors.red
                  ,fontSize: 20.0,

                  ),
                  ),
                  ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                '$counter',
                style: TextStyle(fontWeight: FontWeight.w900,
                    color: Colors.grey,
                fontSize: 50,),
              ),
            ),
            TextButton(
              onPressed:(){
              setState(() { // rebuild the build when you press on the button
                counter++;
                print(counter);

              });
                },
              child: Text
                ('PLUS',

              style: TextStyle(fontWeight: FontWeight.bold,
                  color: Colors.green,
              fontSize: 20.0),
              ),
              ),
          ],
        ),
      ),
    );
  }
}
