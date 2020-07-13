import 'package:flutter/material.dart';

import '../content.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final color;
  final Function onClick;
  String _errorMessage(String str) {
    switch (hint) {
      case 'Enter your name':
        return 'Name is empty !';
      case 'Enter your email':
        return 'Email is empty !';
      case 'Enter your password':
        return 'Password is empty !';
      case 'Enter your country':
        return 'country is empty !';
    }
  }

  CustomTextField(
      {@required this.onClick, @required this.color, @required this.hint});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 15.0,
        left: 15.0,
      ),
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return _errorMessage(hint);
            // ignore: missing_return

          }
        },
        onSaved: onClick,
        obscureText: hint == 'Enter your password' ? true : false,
        cursorColor: Colors.white,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 6.0,
          ),
          hintText: hint,
          hintStyle:
          TextStyle(fontSize: 14.0, color: color, fontFamily: 'Cairo'),
          filled: true,
          fillColor: kSecondaryColor,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(75),
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(75),
              borderSide: BorderSide(color: Colors.white)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white)),
        ),
      ),
    );
  }
}
