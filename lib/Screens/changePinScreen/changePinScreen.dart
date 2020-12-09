import 'package:flutter/material.dart';
import 'package:sanwopay/Screens/settingsScreen/settingsScreen.dart';
import 'package:sanwopay/components/default_button.dart';

import '../../constants.dart';
import 'changePinForm.dart';

class ChangePinScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(children: [
          Row(
            children: [
              IconButton(icon: Icon(Icons.arrow_back, size: 25, color: Colors.black), onPressed:()=>Navigator.pop(context)),
              SizedBox(width: 50),
              Text('Change Pin-Code',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'))
            ],
          ),
          SizedBox(height: 30),
          ChangePinForm(text:'Current Pin'),
          SizedBox(height: 10),
          ChangePinForm(text:'New Pin'),
          SizedBox(height: 10),
          ChangePinForm(text:'Confirm New Pin'),
          SizedBox(height: 30),
          DefaultButton(
            text: 'CHANGE PIN',
            press: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>SettingsScreen()))
          )
        ]),
      ),
    ));
  }
}
