import 'package:flutter/material.dart';
import 'package:sanwopay/Screens/loginScreen/loginScreen.dart';
//import 'package:shop_app/components/socal_card.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'sign_up_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Icon(
                        Icons.arrow_back,
                        color: ktextLightColor,
                      )),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                //sign up form starts here
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // 4%
                      Text("Let's Get Started!",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w800)),
                      SizedBox(height: 15),
                      Text(
                        "Create an account with Sanwopay",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                          letterSpacing: 0.5,
                        ),
                      ),
                      SizedBox(height: 40),
                      SignUpForm(),
                      /*
                      SizedBox(height: SizeConfig.screenHeight * 0.08),
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
                      */
                      SizedBox(height: 20), //getProportionateScreenHeight(20)),
                      Text(
                        'Already have an acoount?',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: ktextLightColor),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (_) => LoginScreen())),
                        child: Text(
                          'Login here',
                          style: TextStyle(
                              color: sanwoYellow,
                              fontSize: 16,
                              fontFamily: 'Poppins'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
