import 'package:flutter/material.dart';

class DialogStructure extends StatelessWidget {
  final Widget content;
  final Widget img;
  DialogStructure({
    this.content,
    this.img
  });

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AlertDialog(
        backgroundColor: Colors.transparent,
        contentPadding: const EdgeInsets.all(0.0),
        content: Container(
          width: screen.size.width > 400.0
              ? 400.0
              : MediaQuery.of(context).size.width * 0.95,
          height:  screen.size.height > 600.0
              ?  MediaQuery.of(context).size.height * 0.6
              : MediaQuery.of(context).size.height * 0.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
          ),
          child: ListView(
            children: <Widget>[
               img,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: content,
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
