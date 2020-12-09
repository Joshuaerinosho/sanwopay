import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sanwopay/Screens/savingsHistoryScreen/SavingsScreen.dart';
import 'package:sanwopay/Screens/savingsScreen/savingsScreen.dart';
import 'package:sanwopay/Screens/sendMoneyScreen/SendMoneyScreen.dart';
import 'package:sanwopay/Screens/topUpScreen/TopUpScreen.dart';
import 'package:sanwopay/Screens/withdrawMoneyScreen/withdrawMoneyScreen.dart';

class DashBoardMenu extends StatelessWidget {
  const DashBoardMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
              //send tab
          Column(
            children: [
              GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>SendMoneyScreen())),
                child: Container(
                  height: 42,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                      icon: SvgPicture.asset(
                          'assets/icons/withdraw_icon.svg'),
                      onPressed: null),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Send',
                style: TextStyle(color: Colors.grey[200]),
              )
            ],
          ),
           // save tab
          Column(
            children: [
              GestureDetector(
                onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=>SavingsScreen())),
                child: Container(
                  height: 42,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                      icon: SvgPicture.asset(
                          'assets/icons/Heart.svg'),
                      onPressed: null),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Save',
                style: TextStyle(color: Colors.grey[200]),
              )
            ],
          ),
           //withdraw tab
          Column(
            children: [
              GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>WithdrawMoneyScreen())),
                child: Container(
                  height: 42,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                      icon: SvgPicture.asset(
                          'assets/icons/withdraw_icon.svg'),
                      onPressed: null),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Wthdraw',
                style: TextStyle(color: Colors.grey[200]),
              )
            ],
          ),
         //Top Up Menu
          Column(
            children: [
              GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>TopUpScreen())),
                child: Container(
                  height: 42,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                      icon: SvgPicture.asset(
                          'assets/icons/wallet.svg'),
                      onPressed: null),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Top-up',
                style: TextStyle(color: Colors.grey[200]),
              )
            ],
          )
        ],
      ),
    );
  }
}
