import 'package:flutter/material.dart';

class CustomTxtField extends StatelessWidget {
  final String hint;
  final color;

  CustomTxtField({@required this.color, @required this.hint});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 15.0,
        left: 15.0,
      ),
      child: TextFormField(
        cursorColor: Colors.black,
        textDirection: TextDirection.ltr,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 12.0,
            color: Colors.black,
            fontFamily: 'Cairo',
          ),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Colors.black)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Colors.black)),
        ),
      ),
    );
  }
}
