import 'package:flutter/material.dart';
import 'package:sanwopay/Screens/forget_password/forget_password_screen.dart';
import 'package:sanwopay/Screens/homeScreen/homeScreen.dart';
//import 'package:sanwopay/Screens/homeScreen/homeScreen.dart';
import 'package:sanwopay/components/form_error.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/avd.dart';
import 'package:sanwopay/components/navBar.dart';
//import 'package:shop_app/components/custom_surfix_icon.dart';
//import 'package:shop_app/screens/login_success/login_success_screen.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];
  bool _passwordVisible = true;

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  void initState(){
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: 30),//getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: 15),//getProportionateScreenHeight(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //SizedBox(width:225),
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_)=> ForgotPasswordScreen())),
                child: Text(
                  "Forgot Password ?",
                  style: TextStyle(color: ktextLightColor, letterSpacing: 0.5)
                ),
              )
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: 30),//getProportionateScreenHeight(20)),
          DefaultButton(
            text: "LOG IN",
            press: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=>MyHomePage() ))
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: !_passwordVisible,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        prefixIcon:IconButton(icon: SvgPicture.asset('assets/icons/Lock.svg'), onPressed: (){},),
        hintText: "Password",
        hintStyle: kHintTextStyle,
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
        suffixIcon: IconButton(icon: Icon(
          //for password visibility
          _passwordVisible 
          ? Icons.visibility
          : Icons.visibility_off,
          color: Colors.grey[400],
        ),
         onPressed: (){
           setState(() {
             _passwordVisible = !_passwordVisible;
           });
         }),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: ktextLightColor,width: 1)
        ),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide(color: ktextLightColor))
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        prefixIcon: IconButton(icon: SvgPicture.asset('assets/icons/smart_phone_icon.svg'), onPressed: (){},),
        hintText: "Phone Number",
        hintStyle: kHintTextStyle,
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: ktextLightColor,width: 1)
        ),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide(color: ktextLightColor))
      ),
    );
  }
}
