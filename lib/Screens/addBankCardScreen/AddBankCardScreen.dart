import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sanwopay/Screens/homeScreen/components/drawerMenu.dart';
import 'package:sanwopay/components/default_button.dart';
import 'package:sanwopay/constants.dart';

class AddBankCardScreen extends StatefulWidget {
  @override
  _AddBankCardScreenState createState() => _AddBankCardScreenState();
}

class _AddBankCardScreenState extends State<AddBankCardScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Bank Card',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white,
                letterSpacing: 0.5)),
                centerTitle: true,
        backgroundColor: sanwoBlue,
        elevation: 0.0,
      ),
      drawer: DrawerMenu(),
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: size.height,
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: size.width * 0.04, vertical: size.height * 0.07),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Card Holder Name',
                            style: TextStyle(
                                color: Colors.grey[900],
                                fontFamily: 'Poppins',
                                fontSize: 17),
                          ),
                        ],
                      ),
                       TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Abdullahi Saheed',
                            labelStyle: TextStyle(
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 16),
                          ),
                        ),
                        SizedBox(height: size.width *0.03),
                        Row(
                          children: [
                            Text(
                              'Card Number',
                              style: TextStyle(
                                  color: Colors.grey[900],
                                  fontFamily: 'Poppins',
                                  fontSize: 17),
                            ),
                          ],
                        ),
                         TextFormField(
                          decoration: InputDecoration(
                              labelText: '5545 9085 0000 0000',
                              labelStyle: TextStyle(
                                  color: Colors.grey[500],
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 16),
                              prefixIcon: IconButton(
                                icon: SvgPicture.asset('assets/icons/Card.svg'),
                                onPressed: null,
                              )),
                        ),
                        SizedBox(height: size.width *0.03),
                        Row(
                          children: [
                            Text(
                              'Expiry Date',
                              style: TextStyle(
                                  color: Colors.grey[900],
                                  fontFamily: 'Poppins',
                                  fontSize: 17),
                            ),
                            SizedBox(width: size.width *0.3),
                            Text(
                              'CVV',
                              style: TextStyle(
                                  color: Colors.grey[900],
                                  fontFamily: 'Poppins',
                                  fontSize: 17),
                            ),
                          ],
                        ),
                      Stack(children: [
                        Padding(
                          padding: EdgeInsets.only(right: size.width *0.68, left: size.width * 0.01),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'mm/yy',
                              labelStyle: TextStyle(
                                  color: Colors.grey[500],
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 16),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: size.width * 0.15, left: size.width * 0.5),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: '000',
                              labelStyle: TextStyle(
                                  color: Colors.grey[500],
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ]),
                      
                      SizedBox(height: size.height * 0.06),
                       DefaultButton(text: 'Add Bank Card', press: () {}),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
