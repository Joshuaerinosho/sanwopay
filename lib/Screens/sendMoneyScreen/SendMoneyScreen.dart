import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sanwopay/Screens/transferToAgentScreen/TransferToAgentScreen.dart';
import 'package:sanwopay/Screens/transferToBankScreen/TransferToBankScreen.dart';

class SendMoneyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.arrow_back,
                        size: 25,
                        color: Colors.grey[600],
                      )),
                ],
              ),
              Row(
                children: [
                  Text('Send Money',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey[700],
                          fontFamily: 'Poppins'))
                ],
              ),
              SizedBox(height:20),
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => TransferToAgentScreen())),
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
                        icon:
                            SvgPicture.asset('assets/icons/to_sanwo_icon.svg'),
                        onPressed: null,
                      ),
                      Text('To SanwoPay',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[700],
                              fontFamily: 'Poppins')),
                      SizedBox(width: size.width * 0.32),
                      Icon(Icons.keyboard_arrow_right,
                          size: 40, color: Colors.grey[400])
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5),
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => BankTransferScreen())),
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
                        onPressed: null,
                      ),
                      Text('To Bank',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[700],
                              fontFamily: 'Poppins')),
                      SizedBox(width: size.width * 0.43),
                      Icon(Icons.keyboard_arrow_right,
                          size: 40, color: Colors.grey[400])
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5),
              GestureDetector(
                onTap: null,
                child: Container(
                  height: 55,
                  width: 355,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      IconButton(
                        icon: SvgPicture.asset('assets/icons/to_ussd_icon.svg'),
                        onPressed: null,
                      ),
                      Text('To USSD',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[700],
                              fontFamily: 'Poppins')),
                      SizedBox(width: size.width * 0.425),
                      Icon(Icons.keyboard_arrow_right,
                          size: 40, color: Colors.grey[400])
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
