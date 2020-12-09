import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sanwopay/components/default_button.dart';

class BankTransferScreen extends StatefulWidget {
  @override
  _BankTransferScreenState createState() => _BankTransferScreenState();
}

class _BankTransferScreenState extends State<BankTransferScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 40),
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          Icons.arrow_back,
                          size: 25,
                          color: Colors.grey[600],
                        )),
                    SizedBox(width: 100),
                    Text('Transfer',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.0))
                  ],
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Card Holder Name',
                      labelStyle: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 16),     
                          ),  
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Account Number',
                      labelStyle: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 16)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Abdullahi Salako Bulus',
                      labelStyle: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 16)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 250, left: 20, top: 10),
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
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Description',
                      labelStyle: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 16)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: DefaultButton(
                    text: 'TRANSFER MONEY',
                    press: () => showDialog(
                        context: context,
                        builder: (ctx) => Padding(
                              padding: EdgeInsets.only(bottom:  size.height * 0.2, top:  size.height * 0.2),
                              child: AlertDialog(
                                  content: Column(
                                children: [
                                  SizedBox(height: size.height * 0.05),
                                  SvgPicture.asset(
                                      'assets/icons/success_alert_icon.svg'),
                                  SizedBox(height: size.height * 0.02),
                                  Text('Transaction \n Successful',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontFamily: 'Poppins'))
                                ],
                              )),
                            ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
