
import 'package:flutter/material.dart';
import 'package:sanwopay/Screens/splashScreen/splashScreen.dart';
import '../../../constants.dart';
import 'package:flutter/services.dart';

class OnboardingScreenTest extends StatefulWidget {
  @override
  _OnboardingScreenTestState createState() => _OnboardingScreenTestState();
}

class _OnboardingScreenTestState extends State<OnboardingScreenTest> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

// indicator builder
  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 30.0 : 13.0,
      decoration: BoxDecoration(
        color: isActive ? sanwoYellow : Colors.grey[400],
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(
              top: 0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: 40),

                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _currentPage != _numPages - 3
                          ? Align(
                              alignment: FractionalOffset.topRight,
                              child: 
                              //previous page arrow
                              GestureDetector(
                                onTap:  () {
                              _pageController.previousPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                                child: Padding(
                                  padding: EdgeInsets.only(left:20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Icon(Icons.keyboard_arrow_left, size: 35, color: ktextLightColor),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          : Text(''),
                      _currentPage != _numPages - 1
                          ? Align(
                              alignment: FractionalOffset.topLeft,
                              child: FlatButton(
                                onPressed: () {
                                  _pageController.nextPage(
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.ease,
                                  );
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(top: 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text(
                                        'Skip',
                                        style: TextStyle(
                                          color: ktextLightColor,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          : Text(''),
                    ]),

               //scrollablepage widget
                Container(
                  height: 460.0,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/undraw_Savings.png',
                                ),
                                height: 290.0,
                                width: 290.0,
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Center(
                              child: Text(
                                'Make it simple',
                                style: kTitleStyle,
                              ),
                            ),
                            SizedBox(height: 0),
                            Center(
                              child: Text(
                                'we pay attention to all payments, \n and find a way to make your effort \n worth it',
                                style: kSubtitleStyle,
                              ),
                            ),
                          ],
                        ),
                      ),

                      //second slide
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/undraw_wallet.png',
                                ),
                                height: 250.0,
                                width: 250.0,
                              ),
                            ),
                            Center(
                              child: Text(
                                'Easy Transfer',
                                style: kTitleStyle,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Center(
                              child: Text(
                                'we pay attention to all payments, \n and find a way to make your effort \n worth it',
                                style: kSubtitleStyle,
                              ),
                            ),
                          ],
                        ),
                      ),

                      //last slide section
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/undraw_order_ride.png',
                                ),
                                height: 250.0,
                                width: 250.0,
                              ),
                            ),
                            Center(
                              child: Text(
                                'Order Ride',
                                style: kTitleStyle,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Center(
                              child: Text(
                                'we pay attention to all payments, \n and find a way to make your effort \n worth it',
                                style: kSubtitleStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _buildPageIndicator(),
                ),

                // here
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Container(
                height: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: sanwoBlue,
                ),
                child: GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_)=> SplashScreen())),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Text(
                        'GET STARTED',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          : Text(''),
    );
  }
}
