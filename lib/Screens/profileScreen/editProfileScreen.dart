import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sanwopay/Screens/homeScreen/components/drawerMenu.dart';
import 'package:sanwopay/Screens/profileScreen/profileScreen.dart';
import 'package:sanwopay/components/default_button.dart';

import '../../constants.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: sanwoBlue,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SvgPicture.asset('assets/icons/notification_bell.svg'),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Container(
                height: 200,//260,
                width: double.infinity,
                color: sanwoBlue,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Profile',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  color: Colors.white70)),
                          //SvgPicture.asset('assets/icons/notification_bell.svg')
                        ],
                      ),
                    ),
                    Stack(children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(60)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60)),
                            child: Padding(
                              padding: const EdgeInsets.all(2.5),
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(60)),
                              ),
                            )),
                      )
                    ]),
                    Text('Daisy Bright',
                        style: TextStyle(
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[200],
                            fontSize: 24,
                            fontFamily: 'Poppins')),
                    Text('Driver',
                        style: TextStyle(
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey[200],
                            fontSize: 16,
                            fontFamily: 'Poppins')),
                  ],
                )), // end of blue area
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      child: Row(
                        children: [
                          Text(
                            'Edit Profile',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(height: 20),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Names',
                            hintText: "Abdullahi Salako",
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: ktextLightColor, width: 1)),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.cancel),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Phone Number',
                            hintText: "999-999-9999",
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: ktextLightColor, width: 1)),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.cancel),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Address',
                            hintText: "10, Abiola  way, Lagos",
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: ktextLightColor, width: 1)),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.cancel),
                              onPressed: () {},
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    DefaultButton(
                      text: 'SAVE',
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ProfileScreen())),
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
