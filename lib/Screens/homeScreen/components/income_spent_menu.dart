import 'package:flutter/material.dart';

import 'demoData.dart';

class Income_spent_menu extends StatefulWidget {
  const Income_spent_menu({
    Key key,
  }) : super(key: key);

  @override
  _Income_spent_menuState createState() => _Income_spent_menuState();
}

class _Income_spent_menuState extends State<Income_spent_menu> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Row(
        children: [
          Container(
            width: 150,
            height: 70,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(0.0, 2.0),
                  )
                ]),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text('Income',
                      style: TextStyle(color: Colors.grey[500], fontSize: 16)),
                ),
                Text(
                  demoUser.income,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87),
                )
              ],
            ),
          ),
          SizedBox(width: 20),
          Container(
            width: 150,
            height: 70,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(0.0, 2.0),
                  )
                ]),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text('Spent',
                      style: TextStyle(color: Colors.grey[500], fontSize: 16)),
                ),
                Text(
                  demoUser.spent,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
