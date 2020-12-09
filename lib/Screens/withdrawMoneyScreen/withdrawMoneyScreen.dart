import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sanwopay/Screens/withdrawToBankScreen/BankWithdrawScreen.dart';
import 'package:sanwopay/Screens/withdrawToSanwoAgentScreen/withdrawToAgentScreen.dart';

class WithdrawMoneyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Withdraw Money',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.grey[700],
                            fontFamily: 'Poppins'))
                  ],
                ),
                SizedBox(height: size.height * 0.03),
              GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>WithdrawToAgentScreen())),
                child: Container(
                  height: size.height * 0.085,
                  width: size.width * 0.9,//355,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      IconButton(
                        icon: SvgPicture.asset('assets/icons/to_sanwo_icon.svg'),
                        onPressed: null
                      ),
                      Text('To SanwoPay',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[700],
                              fontFamily: 'Poppins')),
                      SizedBox(width: size.width * 0.33),
                      Icon(Icons.keyboard_arrow_right,
                          size: 40, color: Colors.grey[400])
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5),
              GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=> BankWithdrawScreen())),
                child: Container(
                  height: size.height * 0.085,//55,
                  width: size.width * 0.9,//355,
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
                      Text('To Bank',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[700],
                              fontFamily: 'Poppins')),
                      SizedBox(width:  size.width * 0.44),
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
