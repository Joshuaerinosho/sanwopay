import 'package:flutter/material.dart';
import 'package:sanwopay/Screens/homeScreen/components/demoData.dart';
import 'package:sanwopay/components/default_button.dart';

import '../../constants.dart';

class WithdrawToAgentScreen extends StatefulWidget {
  @override
  _WithdrawToAgentScreenState createState() => _WithdrawToAgentScreenState();
}

class _WithdrawToAgentScreenState extends State<WithdrawToAgentScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: sanwoBlue,
        body: SafeArea(
            child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: size.width *0.03),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Row(children: [
                    IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.arrow_back,
                            size: 30, color: Colors.white)),
                    SizedBox(width: size.width *0.2),
                    Text('Withdrawal',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0))
                  ]),
                    SizedBox(height: 30),
                 Row(
                   children: [
                     Text(demoUser.accountBalance,
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5)),
                   ],
                 ),
                  Row(
                    children: [
                      Text('Available Balance',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1.0)),
                    ],
                  ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Container(
                  height: size.height,//700,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child:
                   Padding(
                     padding: EdgeInsets.symmetric(horizontal: size.width *0.06),
                     child: Column(children: [
                       SizedBox(height:30),
                       Row(
                         children: [
                           Text('To SanwoPay Agent',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 20)),
                         ],
                       ),
                      //form starts here
                      Column(
                        children: [
                          SizedBox(height: 5),
                           TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Phone Number',
                                labelStyle: TextStyle(
                                    color: Colors.grey[400],
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                    fontSize: 16),
                              ),
                            ),
                          Padding(
                            padding: EdgeInsets.symmetric( vertical: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'Amount',
                                  labelStyle: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins',
                                      fontSize: 16)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'Transaction Pin',
                                  labelStyle: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins',
                                      fontSize: 16)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 30),
                            child: DefaultButton(
                                text: 'WITHDRAW MONEY', press: () {}),
                          ),
                        ],
                      ),
                  ]),
                   ))
            ],
          ),
        )));
  }
}