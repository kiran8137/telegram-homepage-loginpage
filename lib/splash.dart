import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:telegram_main/Homepage.dart';
import 'package:telegram_main/loginpage.dart';
import 'package:telegram_main/main.dart';

class splash extends StatefulWidget{
  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override

  void initState() {
     checkUserLoginIn();
    super.initState();
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
  Widget build (BuildContext context){
    return Scaffold(
      body: Container(
        // width: 130,
        // height: 130,
        child:Stack(
         children: [
          Positioned(
            left: 125,
            top: 125,
             child: Container(
              width: 150,
              height: 150,
               child: Image.asset("assets/telegram_PNG.png",
        fit: BoxFit.cover,),
             ),
         
          ),
          
         ], 
         ),
        ),
      );
    
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> gotoLogin() async{
    await Future.delayed(Duration(seconds: 5));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(ctx){
      return  loginpage();

    }));
  }
  Future<void> checkUserLoginIn() async{
    final _sharedPrefs = await SharedPreferences.getInstance();
    final _UserLoggedIn =  _sharedPrefs.getBool(SAVE_KEY_NAME);
    if(_UserLoggedIn==null||_UserLoggedIn==false){
      gotoLogin();
    }else{
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(ctx){
      return  homepage();
    }
      ),
      );
       
  }

  }
}