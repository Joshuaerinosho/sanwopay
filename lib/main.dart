import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import 'Screens/LoanScreen/LoanScreen.dart';
import 'Screens/addBankCardScreen/AddBankCardScreen.dart';
import 'Screens/homeScreen/homeScreen.dart';
import 'Screens/loginScreen/loginScreen.dart';
import 'Screens/onboardingScreen/onboardingScreen.dart';
import 'Screens/savingsScreen/savingsScreen.dart';
import 'components/navBar.dart';

//int initScreen;
/*
Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen =await preferences.getInt('initScreen');
  await preferences.setInt('initScreen', 1);
  runApp(MyApp());
}*/

void main()=>runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SanwoPay',
      debugShowCheckedModeBanner: false,
      home:  OnboardingScreen(),
      /*initialRoute: initScreen == 0 || initScreen == null ? 'onboard' : 'home',
      routes: {
        'home': (context)=> HomeScreen(),
        'onboard': (context)=> OnboardingScreen(),
      },*/
    );
  }
}
