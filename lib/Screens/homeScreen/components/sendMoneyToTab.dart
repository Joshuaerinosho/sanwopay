import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SendMoneyToTab extends StatelessWidget {
  const SendMoneyToTab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.18),
      child: Container(
        height: size.height * 0.08,
        width: size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          children:[
            Padding(
              padding:  EdgeInsets.only(left: size.width * 0.04),
              child: Text('Send money to', style:TextStyle(fontSize: 18, color: Colors.grey[900])),
            ),
            SizedBox(width: size.width * 0.1),
            IconButton(icon: SvgPicture.asset('assets/icons/yellow_plus_icon.svg'), onPressed: null),
            Text('Add recipient', style: TextStyle(color: Colors.grey[500], fontSize:18))
          ]
        ),
      ),
    );
  }
}
