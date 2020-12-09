import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sanwopay/Screens/homeScreen/components/drawerMenu.dart';
import 'package:sanwopay/Screens/profileScreen/editProfileScreen.dart';
import 'package:sanwopay/components/default_button.dart';

import '../../constants.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: sanwoBlue,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SvgPicture.asset('assets/icons/notification_bell.svg'),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Container(
                height: 200, //260,
                width: double.infinity,
                color: sanwoBlue,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Profile',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  color: Colors.white70)),
                          // SvgPicture.asset('assets/icons/notification_bell.svg')
                        ],
                      ),
                    ),
                    Stack(children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(60)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60)),
                            child: Padding(
                              padding: const EdgeInsets.all(2.5),
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(60)),
                              ),
                            )),
                      )
                    ]),
                    Text('Daisy Bright',
                        style: TextStyle(
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[200],
                            fontSize: 24,
                            fontFamily: 'Poppins')),
                    Text('Driver',
                        style: TextStyle(
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey[200],
                            fontSize: 16,
                            fontFamily: 'Poppins')),
                  ],
                )), // end of blue area
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.06, vertical: size.width * 0.06),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Basic Info',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(height: size.height * 0.02),
                    InfoView(
                        size: size, title: 'Names', text: 'Abdullahi Salako'),
                    SizedBox(height: size.height * 0.02),
                    InfoView(
                        size: size,
                        title: 'Phone Number',
                        text: '999-999-9999'),
                    SizedBox(height: size.height * 0.02),
                    InfoView(
                        size: size,
                        title: 'Address',
                        text: '10, Abiola way, Lagos'),
                    SizedBox(height: size.height * 0.04),
                    DefaultButton(
                      text: 'EDIT PROFILE',
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => EditProfileScreen())),
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class InfoView extends StatelessWidget {
  final String title, text;
  const InfoView({
    Key key,
    @required this.size,
    this.title,
    this.text,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey[200]),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
        child: Column(
          children: [
            Row(
              children: [
                Text(title,
                    style: TextStyle(
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey[800],
                        fontSize: 16,
                        fontFamily: 'Poppins')),
              ],
            ),
            Row(
              children: [
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[900],
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
