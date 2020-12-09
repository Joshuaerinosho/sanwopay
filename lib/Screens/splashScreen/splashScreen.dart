
import 'package:flutter/material.dart';
import 'package:sanwopay/Screens/homeScreen/homeScreen.dart';
import 'dart:async';

import 'package:sanwopay/Screens/loginScreen/loginScreen.dart';
import 'package:sanwopay/components/navBar.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();

    _mockCheckForSession().then(
      (status){
        if(status){
          _navigateToHome();
        }else {
          _navigateToLogin();
        }
      }
    );
  }

  Future<bool> _mockCheckForSession() async{
    await Future.delayed(Duration(milliseconds: 5000),(){});
    return true;
 }

 void _navigateToHome(){
   Navigator.of(context).pushReplacement(
     MaterialPageRoute(builder: (BuildContext context)=> LoginScreen()
     )
   );
 }
  
  void _navigateToLogin(){
   Navigator.of(context).pushReplacement(
     MaterialPageRoute(builder: (BuildContext context)=> MyHomePage()
     )
   );
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 350.0,
          height: 280.0,
          child: Image(
            image: AssetImage('assets/images/sanwologo.png'),
          ),
        ),
      ),
    );
  }
}
