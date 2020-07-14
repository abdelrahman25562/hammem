import 'package:flutter/material.dart';
import 'package:hammem/Model/questionModel.dart';
import 'package:hammem/provider/questionProvider.dart';
import 'package:provider/provider.dart';

class CDT extends StatelessWidget {
  final String hint;
  final String question;
  final color;

  CDT({
    @required this.color,
    @required this.hint,
    this.question,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 15.0,
        left: 15.0,
      ),
      child: Consumer<QuestionProvider>(
        builder: (context, data, _) => TextFormField(
          minLines: 5,
          maxLines: 15,
          onSaved: (value) {
            data.addAnswer(
              element: QuestionModel(
                id: 2,
                question: question,
                answer: value.toString(),
                questionType: QuestionType.Text,
              ),
            );
          },
          cursorColor: Colors.black,
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
      ),
    );
  }
}
