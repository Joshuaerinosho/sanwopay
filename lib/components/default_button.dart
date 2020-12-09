import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';


class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,//getProportionateScreenHeight(56),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: sanwoBlue,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,//getProportionateScreenWidth(18),
            color: Colors.white,
            fontFamily: 'Poppins',
            letterSpacing: 1.0,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
    );
  }
}