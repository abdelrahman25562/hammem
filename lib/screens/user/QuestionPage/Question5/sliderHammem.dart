import 'package:flutter/material.dart';
import 'package:hammem/Model/questionModel.dart';
import 'package:hammem/provider/questionProvider.dart';
import 'package:provider/provider.dart';

class SliderHammem extends StatefulWidget {
  final String title;
  final bool other;
  final int id;

  SliderHammem({
    Key key,
    this.title,
    this.id,
    this.other = false,
  }) : super(key: key);

  @override
  _SliderHammemState createState() => _SliderHammemState();
}

class _SliderHammemState extends State<SliderHammem> {
  int currentSelected = 9;

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Consumer<QuestionProvider>(
      builder: (context, provider, _) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          customButton(
            index: 0,
            title: widget.other ? 'رائعه' : 'طويل جدا',
            selected: currentSelected,
            onTap: () {
              setState(() {
                currentSelected = 0;
              });
              provider.addAnswer(
                element: QuestionModel(
                  question: widget.title,
                  id: widget.id,
                  questionType: QuestionType.Text,
                  answer: widget.other ? 'رائعه' : 'طويل جدا',
                ),
              );
            },
          ),
          customButton(
            index: 1,
            title: widget.other ? 'جيده' : 'طويل',
            selected: currentSelected,
            onTap: () {
              setState(() {
                currentSelected = 1;
              });
              provider.addAnswer(
                element: QuestionModel(
                  question: widget.title,
                  id: widget.id,
                  questionType: QuestionType.Text,
                  answer: widget.other ? 'جيده' : 'طويل',
                ),
              );
            },
          ),
          customButton(
            index: 2,
            title: widget.other ? 'لا بأس' : 'متوسط',
            selected: currentSelected,
            onTap: () {
              setState(() {
                currentSelected = 2;
              });
              provider.addAnswer(
                element: QuestionModel(
                  question: widget.title,
                  id: widget.id,
                  questionType: QuestionType.Text,
                  answer: widget.other ? 'لا بأس' : 'متوسط',
                ),
              );
            },
          ),
          customButton(
            index: 3,
            title: widget.other ? 'غيرمقبوله' : 'قصير',
            selected: currentSelected,
            onTap: () {
              setState(() {
                currentSelected = 3;
              });
              provider.addAnswer(
                element: QuestionModel(
                  question: widget.title,
                  id: widget.id,
                  questionType: QuestionType.Text,
                  answer: widget.other ? 'غيرمقبوله' : 'قصير',
                ),
              );
            },
          ),
          customButton(
            index: 4,
            title: widget.other ? 'مرفوضه' : 'حليق',
            selected: currentSelected,
            onTap: () {
              setState(() {
                currentSelected = 4;
              });
              provider.addAnswer(
                element: QuestionModel(
                  question: widget.title,
                  id: widget.id,
                  questionType: QuestionType.Text,
                  answer: widget.other ? 'مرفوضه' : 'حليق',
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget customButton({
    int index,
    int selected,
    Function onTap,
    String title,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 2.5,
          vertical: 7.0,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 3.5,
          vertical: 2.5,
        ),
        decoration: BoxDecoration(
          color: selected == index ? Color(0xffFE9CD9) : Colors.white,
          border: Border.all(
            color: Colors.black,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12.0,
            ),
          ),
        ),
      ),
    );
  }
}
