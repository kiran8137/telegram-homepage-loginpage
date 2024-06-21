import 'package:flutter/material.dart';
import 'package:telegram_main/Homepage.dart';
import 'package:telegram_main/chatpage.dart';
import 'package:telegram_main/loginpage.dart';
import 'package:telegram_main/splash.dart';

const SAVE_KEY_NAME = 'UserLoggedIn';

 void main(){
  runApp(
    App()
  );
 }

 class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash(),
      //home: loginpage(),
      //home: homepage(),
      //home: chatpage(),


    );
  }
 }