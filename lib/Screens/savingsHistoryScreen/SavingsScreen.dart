import 'package:flutter/material.dart';
import 'package:sanwopay/Screens/homeScreen/components/demoData.dart';
import 'package:sanwopay/Screens/savingsHistoryScreen/savingsDemoData.dart';
import 'package:sanwopay/constants.dart';

class SavingsHistoryScreen extends StatefulWidget {
  @override
  _SavingsHistoryScreenState createState() => _SavingsHistoryScreenState();
}

class _SavingsHistoryScreenState extends State<SavingsHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    height: 180,
                    width: double.infinity,
                    color: sanwoBlue,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right:370, top:10),
                          child: IconButton(icon: Icon(Icons.keyboard_arrow_left, size:40, color:Colors.grey[400]), onPressed:()=>Navigator.pop(context)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, top: 0),
                          child: Row(
                            children: [
                              Text('Savings',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                      color: Colors.white70)),
                              SizedBox(width: 235),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 230),
                          child: Text(demoUser.accountBalance,
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.5)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 230, top:10),
                          child: Text('Available Balance',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1.0)),
                        )
                      ],
                    )),
                Column(
                  children:
                 [
                  Padding(
                    padding: EdgeInsets.only(top: 20, right: 230),
                    child: Text('Savings history',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                        child: Text('Activity',
                            style: TextStyle(
                                color: Colors.grey[800],
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(width: 165),
                      Text('SEE ALL',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              color: Colors.grey[600])),
                      SizedBox(width: 10),
                      Icon(Icons.keyboard_arrow_right,
                          size: 30, color: Colors.grey[700])
                    ],
                  ),
                  Container(
                      height: 400,
                      width: 360,
                      color: Colors.grey[200],
                      child: ListView.builder(
                          itemCount: savingsDemo.length,
                          itemBuilder: (BuildContext context, int index) {
                            SavingsDemoData activity =
                                demoUser.savingsData[index];
                            return Padding(
                              padding: EdgeInsets.symmetric(vertical: 2),
                              child: Container(
                                height: 60,
                                width: 355,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, top: 10),
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.grey[500],
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child:
                                            Icon(Icons.account_circle_rounded),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 70, top: 5),
                                      child: Text(
                                        activity.savingsType,
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 70, top: 30),
                                      child: Text(activity.date,
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.grey[500])),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 300, top: 10),
                                      child: Text(activity.amount,
                                          style: TextStyle(
                                              color: Colors.grey[800])),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }))
                ]),
              ],
            ),
          ),
        ));
  }
}
