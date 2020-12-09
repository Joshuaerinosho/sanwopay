import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sanwopay/Screens/homeScreen/components/demoData.dart';
import 'package:sanwopay/Screens/homeScreen/components/drawerMenu.dart';
import 'package:sanwopay/components/default_button.dart';
import 'package:sanwopay/constants.dart';

class LoanScreen extends StatefulWidget {
  @override
  _LoanScreenState createState() => _LoanScreenState();
}

class _LoanScreenState extends State<LoanScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    height: size.height * 0.25,
                    width: double.infinity,
                    color: sanwoBlue,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.04),
                      child: Column(
                        children: [
                          SizedBox(height: size.height * 0.05),
                          Row(
                            children: [
                              Text('Loans',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                      color: Colors.white70)),
                              SizedBox(width: size.width * 0.65),
                              Container(
                                  height: size.width * 0.12,
                                  width: size.width * 0.12,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                )
                            ],
                          ),
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
                    )),
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.04,
                        vertical: size.width * 0.04),
                    child: Column(children: [
                      Row(
                        children: [
                          Text('Loan Description',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                  fontSize: 18)),
                        ],
                      ),
                      SizedBox(height: size.width * 0.02),
                      Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: "Loan Description",
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                      color: ktextLightColor, width: 1)),
                            ),
                          ),
                          SizedBox(height: size.width * 0.02),
                          TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: "Amount",
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                      color: ktextLightColor, width: 1)),
                            ),
                          ),
                          SizedBox(height: size.width * 0.02),
                          TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: "Select Duration",
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                      color: ktextLightColor, width: 1)),
                            ),
                          ),
                          SizedBox(height: size.width * 0.08),
                          DefaultButton(
                              text: 'REQUEST LOAN',
                              press: () => showDialog(
                                  context: context,
                                  builder: (ctx) => Padding(
                                        padding: EdgeInsets.only(
                                            bottom: size.height * 0.15,
                                            top: size.height * 0.2),
                                        child: AlertDialog(
                                            content: Column(
                                          children: [
                                            SizedBox(height: size.height * 0.05),
                                            SvgPicture.asset(
                                                'assets/icons/success_alert_icon.svg'),
                                            SizedBox(height: size.height * 0.025),
                                            Text('Loan Granted',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontFamily: 'Poppins')),
                                            Text('10,000',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontFamily: 'Poppins')),
                                            Text(
                                                'has been credited \n   into your wallet',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontFamily: 'Poppins'))
                                          ],
                                        )),
                                      )))
                        ],
                      ),
                    ]),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
