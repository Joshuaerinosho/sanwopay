import 'package:flutter/material.dart';
import 'package:sanwopay/components/no_account_text.dart';
import '../../../size_config.dart';
import 'login_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 30),//getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 70),
                Image.asset('assets/images/undraw_begin_chat.png'),
                SizedBox(height:10),
                Text(
                  "Welcome back!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,//getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    letterSpacing: 1.0
                  ),
                ),
                SizedBox(height:10),
                Text(
                  "Log in to your account.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize:20, letterSpacing: 1.0),
                  
                ),
                SizedBox(height: 20),//SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: 10),
                /*
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),*/
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
