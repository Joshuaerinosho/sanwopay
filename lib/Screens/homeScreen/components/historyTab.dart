import 'package:flutter/material.dart';

class HistoryTab extends StatelessWidget {
  const HistoryTab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.27),
      child: Container(
        height: size.height * 0.08,
        width:  size.width,
        color: Colors.grey[200],
        child: Column(
          children: [
            Row(children: [
              Padding(
                padding: EdgeInsets.only(left: size.width * 0.04),
                child: Text('All',
                    style: TextStyle(fontSize: 18, color: Colors.grey[900])),
              ),
              SizedBox(width: size.width * 0.04),
              Text('Received',
                  style: TextStyle(fontSize: 18, color: Colors.grey[600])),
              SizedBox(width: size.width * 0.04),
              Text('Send',
                  style: TextStyle(fontSize: 18, color: Colors.grey[600])),
              SizedBox(width: size.width * 0.36),
              Icon(Icons.keyboard_arrow_right,
                  color: Colors.grey[500], size: 40)
            ]),
          ],
        ),
      ),
    );
  }
}
