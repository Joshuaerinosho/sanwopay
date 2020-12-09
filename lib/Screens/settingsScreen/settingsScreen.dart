import'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sanwopay/Screens/changePinScreen/changePinScreen.dart';
import 'package:sanwopay/Screens/homeScreen/components/drawerMenu.dart';
import 'package:sanwopay/Screens/profileScreen/editProfileScreen.dart';

import '../../constants.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: sanwoBlue,
      ),
      drawer: DrawerMenu(),
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [/*
            Padding(
              padding: EdgeInsets.only(right: 340, top: 40),
              child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back,
                    size: 25,
                    color: Colors.grey[600],
                  )),
            ),*/
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 27, vertical: 20),
              child: Row(
                children: [
                  Text('Settings',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey[700],
                          fontFamily: 'Poppins'))
                ],
              ),
            ),
            GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=> EditProfileScreen())),
              child: Container(
                height: 55,
                width: 355,
                //color: Colors.white70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  children: [
                    IconButton(
                      icon: SvgPicture.asset('assets/icons/Profile.svg'),
                      onPressed: null
                    ),
                    Text('Edit Profile',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[700],
                            fontFamily: 'Poppins')),
                    SizedBox(width: 170),
                    Icon(Icons.keyboard_arrow_right,
                        size: 40, color: Colors.grey[400])
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
            GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=> ChangePinScreen())),
              child: Container(
                height: 55,
                width: 355,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  children: [
                    IconButton(
                      icon: SvgPicture.asset(
                          'assets/icons/clarity_bank-line.svg'),
                      onPressed: null,//ignor implementation
                    ),
                    Text('Change Pin-Code',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[700],
                            fontFamily: 'Poppins')),
                    SizedBox(width: 100),
                   Icon(Icons.keyboard_arrow_right,
                            size: 40, color: Colors.grey[400])
                  ],
                ),
              ),
            ),

            
            SizedBox(height: 5),
            GestureDetector(
              onTap: null,//()=>Navigator.push(context, MaterialPageRoute(builder: (_)=> BankWithdrawScreen())),
              child: Container(
                height: 55,
                width: 355,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  children: [
                    IconButton(
                      icon: SvgPicture.asset(
                          'assets/icons/Vector.svg'),
                      onPressed: null,//ignor implementation
                    ),
                    Text('Night Mode',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[700],
                            fontFamily: 'Poppins')),
                    SizedBox(width: 140),
                    Switch(value: _value, onChanged: (value){
                        setState(() {
                          _value =value;
                        });
                    }, )
                   /*Icon(Icons.keyboard_arrow_right,
                            size: 40, color: Colors.grey[400])*/
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}