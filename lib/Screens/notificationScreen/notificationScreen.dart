import 'package:flutter/material.dart';
import 'package:sanwopay/Screens/homeScreen/components/demoData.dart';
import 'package:sanwopay/Screens/homeScreen/components/drawerMenu.dart';
import 'package:sanwopay/Screens/savingsHistoryScreen/savingsDemoData.dart';
import 'package:sanwopay/components/default_button.dart';
import 'package:sanwopay/constants.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: sanwoBlue,
        elevation: 0.0,
      ),
      drawer: DrawerMenu(),
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Text('Notification',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text('Recent',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.grey[900])),
                FlatButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text('Clear',
                            style: TextStyle(
                                fontSize: 18, color: Colors.grey[600])),
                        Icon(Icons.keyboard_arrow_right)
                      ],
                    ))
              ]),
              SizedBox(height: 20),
              Container(
                  height: 200,
                  width: 360,
                  color: Colors.grey[200],
                  child: ListView.builder(
                      itemCount: savingsDemo.length,
                      itemBuilder: (BuildContext context, int index) {
                        SavingsDemoData activity = demoUser.savingsData[index];
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
                                  padding: EdgeInsets.only(left: 10, top: 10),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[500],
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Icon(Icons.account_circle_rounded),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 70, top: 5),
                                  child: Text(
                                    activity.savingsType,
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 70, top: 30),
                                  child: Text(activity.date,
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey[500])),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: size.width * 0.72, top: 10),
                                  child: Text(activity.amount,
                                      style:
                                          TextStyle(color: Colors.grey[800])),
                                )
                              ],
                            ),
                          ),
                        );
                      })),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text('Older',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.grey[900])),
                FlatButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text('Clear',
                            style: TextStyle(
                                fontSize: 18, color: Colors.grey[600])),
                        Icon(Icons.keyboard_arrow_right)
                      ],
                    ))
              ]),
              Container(
                  height: 150,
                  width: 360,
                  color: Colors.grey[200],
                  child: ListView.builder(
                      itemCount: savingsDemo.length,
                      itemBuilder: (BuildContext context, int index) {
                        SavingsDemoData activity = demoUser.savingsData[index];
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
                                  padding: EdgeInsets.only(left: 10, top: 10),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[500],
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Icon(Icons.account_circle_rounded),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 70, top: 5),
                                  child: Text(
                                    activity.savingsType,
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 70, top: 30),
                                  child: Text(activity.date,
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey[500])),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: size.width * 0.72, top: 10),
                                  child: Text(activity.amount,
                                      style:
                                          TextStyle(color: Colors.grey[800])),
                                )
                              ],
                            ),
                          ),
                        );
                      })),
                      SizedBox(height:20),
                      DefaultButton(
                        text: 'CLEAR ALL',
                        press: (){}
                      )
            ],
          ),
        ),
      ),
    ));
  }
}
