import 'package:flutter/material.dart';
import 'package:hammem/Model/questionModel.dart';
import 'package:hammem/provider/questionProvider.dart';
import 'package:provider/provider.dart';

class ButtonQ6 extends StatefulWidget {
  final String question;

  ButtonQ6({
    this.question,
  });

  @override
  _ButtonQ6State createState() => _ButtonQ6State();
}

class _ButtonQ6State extends State<ButtonQ6> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width - 20,
          height: MediaQuery.of(context).size.height / 15,
          margin: EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 5.0,
          ),
          child: Consumer<QuestionProvider>(
            builder: (context, provider, _) => OutlineButton(
              color: Colors.white24,
              borderSide: BorderSide(color: Colors.black),
              shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: Container(
                child: RaisedButton(
                  color: check ? Colors.green : Colors.white,
                  onPressed: () {
                    String answer = 'لا';
                    setState(() {
                      check = !check;
                      if (check) {
                        answer = 'نعم';
                      } else {
                        answer = 'لا';
                      }
                    });
                    provider.addAnswer(
                      element: QuestionModel(
                        answer: answer,
                        questionType: QuestionType.Text,
                        id: 5,
                        question: widget.question,
                      ),
                    );
                  },
                  child: Text(
                    widget.question,
                    style: TextStyle(fontSize: 15.0),
                    textDirection: TextDirection.ltr,
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
