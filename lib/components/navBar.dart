
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:sanwopay/Screens/LoanScreen/LoanScreen.dart';
import 'package:sanwopay/Screens/addBankCardScreen/AddBankCardScreen.dart';
import 'package:sanwopay/Screens/forget_password/forget_password_screen.dart';
import 'package:sanwopay/Screens/homeScreen/homeScreen.dart';
import 'package:sanwopay/Screens/profileScreen/profileScreen.dart';
import 'package:sanwopay/Screens/sign_up/sign_up_screen.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class CustomNavBarWidget extends StatelessWidget {
  final int selectedIndex;
  final List<PersistentBottomNavBarItem> items;
  final ValueChanged<int> onItemSelected;

  CustomNavBarWidget({
    Key key,
    this.selectedIndex,
    @required this.items,
    this.onItemSelected,
  });

  Widget _buildItem(PersistentBottomNavBarItem item, bool isSelected) {
    return Container(
      alignment: Alignment.center,
      height: 60.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
            child: IconTheme(
              data: IconThemeData(
                  size: 26.0,
                  color: isSelected
                      ? (item.activeContentColor == null
                          ? item.activeColor
                          : item.activeContentColor)
                      : item.inactiveColor == null
                          ? item.activeColor
                          : item.inactiveColor),
              child: item.icon,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Material(
              type: MaterialType.transparency,
              child: FittedBox(
                  child: Text(
                item.title,
                style: TextStyle(
                    color: isSelected
                        ? (item.activeContentColor == null
                            ? item.activeColor
                            : item.activeContentColor)
                        : item.inactiveColor,
                    fontWeight: FontWeight.w400,
                    fontSize: item.titleFontSize),
              )),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        width: double.infinity,
        height: 60.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: items.map((item) {
            var index = items.indexOf(item);
            return Flexible(
              child: GestureDetector(
                onTap: () {
                  this.onItemSelected(index);
                },
                child: _buildItem(item, selectedIndex == index),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [HomeScreen(), LoanScreen(), AddBankCardScreen(), HomeScreen(), ProfileScreen()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(MdiIcons.home),//SvgPicture.asset('assets/icons/Home.svg'),
        title: ("Home"),
        activeColor: Colors.blue,
        inactiveColor: Colors.grey,
        titleStyle: TextStyle(color: Colors.blue),
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset('assets/icons/money_bag.svg'),
        title: ("Loan"),
        activeColor: Colors.blue,
        inactiveColor: Colors.grey,
        titleStyle: TextStyle(color: Colors.blue),
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset('assets/icons/yellow_plus_icon.svg'),
        title: (" "),
        activeColor: Colors.blue,
        inactiveColor: Colors.grey,
        //isTranslucent: false,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(MdiIcons.trainCar), //SvgPicture.asset('assets/icons/mdi_train-car.svg'),
        title: ("Chatta"),
        activeColor: Colors.blue,
        inactiveColor: Colors.grey,
        //isTranslucent: false,
      ),
      
      PersistentBottomNavBarItem(
        icon: Icon(MdiIcons.accountCircleOutline),//SvgPicture.asset('assets/icons/Profile.svg'),
        title: ("Profile"),
        activeColor: Colors.blue,
        inactiveColor: Colors.grey,
        //isTranslucent: false,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
        controller: _controller,
        screens: _buildScreens(),
        items:
            _navBarsItems(), // Redundant here but defined to demonstrate for other than custom style
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        onItemSelected: (int) {
          setState(
              () {}); // This is required to update the nav bar if Android back button is pressed
        },
        customWidget: CustomNavBarWidget(
          items: _navBarsItems(),
          onItemSelected: (index) {
            setState(() {
              _controller.index = index; // THIS IS CRITICAL!! Don't miss it!
            });
          },
          selectedIndex: _controller.index,
        ),
        itemCount: 4,
        navBarStyle:
            NavBarStyle.custom // Choose the nav bar style with this property
        );
  }
}
