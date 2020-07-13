import 'package:flutter/material.dart';

//=================button_home_page==================//
class Button extends StatelessWidget {
  final String hint;
  final color;
  final image;
  final Function onClick;
  @override
  Button(
      {this.image,
      @required this.onClick,
      @required this.color,
      @required this.hint});
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 80.0,
        left: 80.0,
      ),
      child: FlatButton(
        onPressed: onClick,
        child: Row(
          textDirection: TextDirection.rtl,
          children: <Widget>[
            Image.asset(
              image,
              height: 35.0,
              width: 30.0,
            ),
            SizedBox(width: 5.0,),
            Text(
              hint,
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 15.0, fontFamily: 'Cairo'),
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Color(0xffE7AEC3),
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
