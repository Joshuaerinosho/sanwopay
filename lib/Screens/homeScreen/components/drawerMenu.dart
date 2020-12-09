import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sanwopay/Screens/addBankCardScreen/AddBankCardScreen.dart';
import 'package:sanwopay/Screens/notificationScreen/notificationScreen.dart';
import 'package:sanwopay/Screens/profileScreen/editProfileScreen.dart';
import 'package:sanwopay/Screens/settingsScreen/settingsScreen.dart';

import '../../../constants.dart';
import '../homeScreen.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: SafeArea(
        child: Column(
          children: [
            Container(
                height: 90,
                width: double.infinity,
                color: sanwoBlue,
                child: Padding(
                  padding: const EdgeInsets.only(left:20),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.grey[300],
                        ),
                      ),
                      SizedBox(width: 10),
                      Text('Daisy \nBright',
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24, color: Colors.grey[300]))
                    ],
                  ),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal:20),
              child: Column(
                children: [
                  MenuItem(
                      icon: SvgPicture.asset('assets/icons/Home.svg'),
                      text: Text('DashBoard',
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: Colors.grey[600])),
                      press: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeScreen()))),
                  SizedBox(height: 20),
                  MenuItem(
                      icon: SvgPicture.asset('assets/icons/black_notification.svg'),
                      text: Text('Notification',
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: Colors.grey[600])),
                      press:  ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=>NotificationScreen()))),
                  SizedBox(height: 20),
                  MenuItem(
                      icon: SvgPicture.asset('assets/icons/Profile.svg'),
                      text: Text('Edit Profile',
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: Colors.grey[600])),
                      press:  ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=>EditProfileScreen()))),
                  SizedBox(height: 20),
                  MenuItem(
                      icon: SvgPicture.asset('assets/icons/Card.svg'),
                      text: Text('Add Card',
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: Colors.grey[600])),
                      press:  ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=>AddBankCardScreen()))),
                  SizedBox(height: 20),
                  MenuItem(
                      icon: SvgPicture.asset('assets/icons/settings.svg'),
                      text: Text('Settings',
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: Colors.grey[600])),
                      press:  ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=>SettingsScreen()))),
                  SizedBox(height: 20),
                  MenuItem(icon: Icon(MdiIcons.logout),
                          text: Text('Logout',style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: Colors.grey[600])),
                          press: (){}),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final Widget icon;
  final Widget text;
  final Function press;
  const MenuItem({
    Key key,
    this.icon,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Row(
        children: [
          icon,
          SizedBox(width: 15),
          text,
          //SvgPicture.asset('assets/icons/Home.svg'),
          /* Text('Dashboard',
              style: TextStyle(fontSize: 20, color: Colors.grey[300]))*/
        ],
      ),
    );
  }
}
