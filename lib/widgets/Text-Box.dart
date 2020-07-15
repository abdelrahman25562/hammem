import 'package:flutter/material.dart';
import 'package:hammem/Model/questionModel.dart';
import 'package:hammem/provider/questionProvider.dart';
import 'package:hammem/widgets/StarRating.dart';
import 'package:provider/provider.dart';

class CustomTxtField extends StatefulWidget {
  final String hint;
  final String question;

  final color;

  CustomTxtField({
    @required this.color,
    @required this.hint,
    this.question,
  });

  @override
  _CustomTxtFieldState createState() => _CustomTxtFieldState();
}

class _CustomTxtFieldState extends State<CustomTxtField> {
  String answer = 'لم يتم الاختيار';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 15.0,
        left: 15.0,
        top: 5.0,
      ),
      child: TextFormField(
        onChanged: (value) {
          setState(() {
            answer = value;
          });
        },
        cursorColor: Colors.black,
        textDirection: TextDirection.ltr,
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Consumer<QuestionProvider>(
              builder: (context, data, _) => RaisedButton(
                onPressed: () {
                  data.addAnswer(
                    element: QuestionModel(
                      id: 1,
                      question: widget.question,
                      answer: widget.hint + ':' + answer,
                      questionType: QuestionType.Text,
                    ),
                  );
                  Scaffold.of(context).hideCurrentSnackBar();
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text('$answerتم اختيار '),
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
                color: Colors.blue,
                child: Txt('حفظ'),
              ),
            ),
          ),
          hintText: widget.hint,
          hintStyle: TextStyle(
            fontSize: 12.0,
            color: Colors.black,
            fontFamily: 'Cairo',
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 8.0
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
