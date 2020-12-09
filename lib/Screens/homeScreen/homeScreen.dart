import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sanwopay/Screens/homeScreen/components/demoData.dart';
import 'package:sanwopay/constants.dart';

import 'components/dashBoardMenu.dart';
import 'components/drawerMenu.dart';
import 'components/historyTab.dart';
import 'components/income_spent_menu.dart';
import 'components/sendMoneyToTab.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: sanwoBlue,
          actions: [
            IconButton(
                icon: SvgPicture.asset('assets/icons/notification_bell.svg'),
                onPressed: null),
          ],
        ),
        drawer: DrawerMenu(),
        backgroundColor: sanwoBlue,
        body: Container(
          child: SafeArea(
            child: ListView(children: [
              Column(children: [
                Container(
                  color: sanwoBlue,
                  height: size.height * 0.3,
                  width: size.width,
                  child: Column(// column for the blue part of the UI
                      children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(demoUser.accountBalance,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: ktextWhite,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700)),
                                      SizedBox(width:20),
                              Icon(Icons.visibility_off, color: ktextWhite),
                            ],
                          ),Row(
                            children: [
                              Text(
                                  'Available Balance',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey[200]),
                                ),
                            ],
                          ),
                          SizedBox(height: size.height *0.05),
                          DashBoardMenu()
                        ],
                      ),
                    ),
                  ]),
                ), //end of the blue layer

                Container(
                  height: size.height,
                  width: size.width,//415,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(20))),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                      child: Column(
                        children: [
                          Stack(children: [
                            Income_spent_menu(),
                            SendMoneyToTab(),
                            HistoryTab(),
                          ]),
                          Container(
                             height: size.height,//400,
                              width: size.width,//360,
                              color: Colors.white,
                              child: ListView.builder(
                                  itemCount: accountTransactions.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    TransHistory activity =
                                        demoUser.accountHistory[index];
                                    return Container(
                                      height: size.width * 0.14,
                                      width: size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: size.width * 0.03, top: size.height * 0.01),
                                            child: Container(
                                              height: size.height * 0.07,
                                              width: size.width * 0.12,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[500],
                                                  borderRadius:
                                                      BorderRadius.circular(50)),
                                              child: Icon(Icons
                                                  .account_circle_rounded),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: size.width * 0.17, top: size.width * 0.02),
                                            child: Text(
                                              activity.name,
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: size.width * 0.17, top: size.width * 0.07),
                                            child: Text(activity.description,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.grey[700])),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: size.width * 0.8, top: 10),
                                            child: Text(activity.amount,
                                                style: TextStyle(
                                                    color: Colors.grey[400])),
                                          )
                                        ],
                                      ),
                                    );
                                  }))
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ]),
          ),
        ));
  }
}
