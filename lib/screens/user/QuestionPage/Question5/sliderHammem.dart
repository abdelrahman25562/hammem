import 'package:flutter/material.dart';
import 'package:hammem/Model/questionModel.dart';
import 'package:hammem/provider/questionProvider.dart';
import 'package:hammem/widgets/StarRating.dart';
import 'package:provider/provider.dart';

class SliderHammem extends StatefulWidget {
  SliderHammem({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SliderHammemState createState() => _SliderHammemState();
}

class _SliderHammemState extends State<SliderHammem> {
  int currentSelected = 4;

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
            title: 'طويل',
            selected: currentSelected,
            onTap: () {
              setState(() {
                currentSelected = 0;
              });
              provider.addAnswer(
                element: QuestionModel(
                  question: widget.title,
                  id: 4,
                  questionType: QuestionType.Text,
                  answer: 'طويل',
                ),
              );
            },
          ),
          customButton(
            index: 1,
            title: 'متوسط',
            selected: currentSelected,
            onTap: () {
              setState(() {
                currentSelected = 1;
              });
              provider.addAnswer(
                element: QuestionModel(
                  question: widget.title,
                  id: 4,
                  questionType: QuestionType.Text,
                  answer: 'متوسط',
                ),
              );
            },
          ),
          customButton(
            index: 2,
            title: 'قصير',
            selected: currentSelected,
            onTap: () {
              setState(() {
                currentSelected = 2;
              });
              provider.addAnswer(
                element: QuestionModel(
                  question: widget.title,
                  id: 4,
                  questionType: QuestionType.Text,
                  answer: 'قصير',
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
          horizontal: 10.0,
          vertical: 5.0,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 7.5,
        ),
        decoration: BoxDecoration(
          color: selected == index ? Colors.grey[300] : Colors.white,
          border: Border.all(
            color: Colors.black,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Center(
          child: Txt(title),
        ),
      ),
    );
  }
}
