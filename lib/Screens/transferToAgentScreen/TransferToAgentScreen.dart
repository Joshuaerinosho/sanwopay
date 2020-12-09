import'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sanwopay/components/default_button.dart';

class TransferToAgentScreen extends StatefulWidget {
  @override
  _TransferToAgentScreenState createState() => _TransferToAgentScreenState();
}

class _TransferToAgentScreenState extends State<TransferToAgentScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
            children: [
               Padding(
                padding: EdgeInsets.only(right: 340, top: 40),
                child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back,
                      size: 25,
                      color: Colors.grey[600],
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 27, vertical: 20),
                child: Row(
                  children: [
                    Text('To Another SanwoPay',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.grey[700],
                            fontFamily: 'Poppins'))
                  ],
                ),
              ),

             Padding(
               padding: EdgeInsets.symmetric(horizontal: 20),
               child: TextFormField(
                 decoration: InputDecoration(
                   labelText: 'Phone Number',
                   labelStyle: TextStyle(color:Colors.grey[500], fontWeight: FontWeight.w500, fontFamily:'Poppins',fontSize: 16)
                 ),),
             ),

             Padding(
               padding: EdgeInsets.only(right: 250, left:20,top:10),
               child: TextFormField(
                 decoration: InputDecoration(
                   labelText: 'Amount',
                   labelStyle: TextStyle(color:Colors.grey[500], fontWeight: FontWeight.w500, fontFamily:'Poppins',fontSize: 16)
                 ),),
             ),

             Padding(
               padding: EdgeInsets.symmetric(horizontal: 20, vertical:10),
               child: TextFormField(
                 decoration: InputDecoration(
                   labelText: 'Description',
                   labelStyle: TextStyle(color:Colors.grey[500], fontWeight: FontWeight.w500, fontFamily:'Poppins',fontSize: 16)
                 ),),
             ),

             Padding(
               padding: EdgeInsets.symmetric(horizontal: 20, vertical:10),
               child: TextFormField(
                 decoration: InputDecoration(
                   labelText: 'Transaction Pin',
                   labelStyle: TextStyle(color:Colors.grey[500], fontWeight: FontWeight.w500, fontFamily:'Poppins',fontSize: 16)
                 ),),
             ),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
               child: DefaultButton(
                 text:'TRANSFER',
                 press: ()=> showDialog(
                   context: context,
                   builder: (ctx)=> Padding(
                     padding: EdgeInsets.only(top: size.height * 0.2, bottom: size.height * 0.25),
                     child: AlertDialog(
                       content:Column(children: [
                         SizedBox(height:  size.height * 0.02),
                         SvgPicture.asset('assets/icons/success_alert_icon.svg'),
                         SizedBox(height: size.height * 0.02),
                         Text('Transaction \n Successful', style:TextStyle(fontSize:20, color:Colors.black,fontFamily: 'Poppins'))

                       ],)
                     ),
                   )
                 )
               ),
             ),
            ],
          ),
      ),
    );
  }
}