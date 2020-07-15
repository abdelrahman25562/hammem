import 'package:flutter/material.dart';
import 'package:hammem/Model/questionModel.dart';
import 'package:hammem/provider/questionProvider.dart';
import 'package:provider/provider.dart';

class SliderHammem extends StatefulWidget {
  SliderHammem({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SliderHammemState createState() => _SliderHammemState();
}

class _SliderHammemState extends State<SliderHammem> {
  double _value = 0.5;

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Consumer<QuestionProvider>(
      builder: (context, provider, _) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'طويل',
            style: TextStyle(
                fontSize: screen.size.width > 365 ? 12 : 10,
                fontFamily: 'Cairo'),
          ),
          Slider(
            value: _value,
            onChanged: (double newValue) {
              setState(() {
                _value = newValue;
              });
              provider.addAnswer(
                element: QuestionModel(
                  question: widget.title,
                  questionType: QuestionType.Text,
                  id: 4,
                  answer: _value.toStringAsFixed(2).toString() + ' / 1',
                ),
              );
            },
          ),
          Text(
            'قصير',
            style: TextStyle(
                fontSize: screen.size.width > 365 ? 12 : 10,
                fontFamily: 'Cairo'),
          ),
        ],
      ),
    );
  }
}
