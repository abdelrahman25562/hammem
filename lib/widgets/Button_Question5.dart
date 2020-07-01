import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  tmpFunction() {
    print('Function on Click Event Called.');
    // Put your code here, which you want to execute on onPress event.
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RaisedButton(
          child: Text(" Button 1 "),
          onPressed: tmpFunction,
          color: Color(0xffFF1744),
          textColor: Colors.white,
          splashColor: Colors.grey,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        ),
        RaisedButton(
          child: Text(" Button 2 "),
          onPressed: tmpFunction,
          color: Color(0xff0091EA),
          textColor: Colors.white,
          splashColor: Colors.grey,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        ),
        RaisedButton(
          child: Text(" Button 3 "),
          onPressed: tmpFunction,
          color: Color(0xff1B5E20),
          textColor: Colors.white,
          splashColor: Colors.grey,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        ),
      ],
    ));
  }
}
