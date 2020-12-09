import 'package:flutter/material.dart';
import 'package:sanwopay/Screens/sign_up/sign_up_screen.dart';
//import 'package:shop_app/screens/sign_up/sign_up_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account? ",
          style: TextStyle(
            fontSize: 16,
            color: ktextLightColor,
            letterSpacing: 0.5,
            fontFamily: 'Poppins'),//getProportionateScreenWidth(16)),
        ),
        SizedBox(height:10),
        GestureDetector(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_)=> SignUpScreen())),
          child: Text(
            "Sign Up",
            style: TextStyle(
                fontSize: 16,//getProportionateScreenWidth(16),
                color: Colors.yellow[500]),
          ),
        ),
        
      ],
    );
  }
}