import 'package:flutter/material.dart';
import 'package:untitled/Counter_Screen.dart';
import 'package:untitled/MessangerScreen.dart';
//import 'package:untitled/home_screen.dart';
import 'package:untitled/login_Screen.dart';
import 'package:untitled/users_Screen.dart';

void main(){
 runApp(MyApp());


 //
 // MyApp app=MyApp();
 // Widget a=MyApp(); // MyApp will


}

// there are 2 main wedges in the flutter
// 1.  stateless  // there is a ready class call stateless widges
// 2. stateful    // there is a ready class call stateful widges


class MyApp extends StatelessWidget{
 //call by itself    //constractor
 //call by itself    //build
 // there is a bige widget call Material App carry all widgets in app // remeber every piece in app is a widget EX: button , title , login bar
  @override
  Widget build(BuildContext context) { // Build is the manager or your App screen
   return MaterialApp(
     debugShowCheckedModeBanner: false, // for remove the debug sign in the corner
     home: users_Screen(),

   );

  }



}