import 'package:flutter/material.dart';
import 'package:sanwopay/components/default_button.dart';
import 'package:sanwopay/components/form_error.dart';
import 'package:sanwopay/components/no_account_text.dart';
//import 'package:shop_app/components/custom_surfix_icon.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                SizedBox(width: 20),
                Text(
                  'Forgot Password',
                  style: TextStyle(fontSize: 20, color: Colors.blue[800]),
                )
              ],
            ),
          ), Column(
            children: [
              Text(
                  "Please enter your registered phone \n number and a comfirmation OTP \n code will be sent to you",
                  style: TextStyle(
                      fontSize: 15, color: Colors.grey[700], fontFamily: 'Poppins'),
                  textAlign: TextAlign.start,
                ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 20), //getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    SizedBox(height: 10),

                    SizedBox(height: 10), //SizeConfig.screenHeight * 0.1),
                    ForgotPassForm(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return null;
            },
            validator: (value) {
              if (value.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: "Phone Number",
              hintStyle: TextStyle(color: Colors.grey[400]),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: ktextLightColor, width: 1)),
              prefixIcon: Icon(Icons.smartphone, color: Colors.grey[400]),
            ),
          ),
          SizedBox(height: 10),
          //FormError(errors: errors),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Resend',
                style: TextStyle(color: Colors.grey[500], fontSize: 16),
              )
            ],
          ),
          SizedBox(height: 30),
          DefaultButton(
            text: "Request OTP",
            press: () {
              if (_formKey.currentState.validate()) {
                // Do what you want to do
              }
            },
          ),
        ],
      ),
    );
  }
}
