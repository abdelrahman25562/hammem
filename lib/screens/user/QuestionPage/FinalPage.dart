import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hammem/provider/questionProvider.dart';
import 'package:hammem/screens/user/HomePage.dart';
import 'package:hammem/screens/user/QuestionPage/questionPage.dart';
import 'package:provider/provider.dart';

class Final extends StatefulWidget {
  static String id = 'Result1';

  @override
  _FinalState createState() => _FinalState();
}

class _FinalState extends State<Final> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Image.asset(
            'assets/images/finish.png',
            height: 100,
            width: 100,
          ),
          SizedBox(height: 20.0),
          Text(
            'تم الانتهاء من الاستبيان',
            style: TextStyle(fontSize: 25.0, fontFamily: 'Cairo'),
          ),
          Consumer<QuestionProvider>(
            builder: (context, provider, _) => Center(
                child: InkWell(
              onTap: () {
                provider.generatePdfAndView(
                  context: context,
                  questionNum: 10,
                );
              },
              child: Text(
                'استعراض التقرير',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Cairo',
                    color: Color(0xffFC009E)),
              ),
            )),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, Question.id);
            },
            child: Text(
              'اعادة استبيان جديد',
              style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Cairo',
                  color: Color(0xffFC009E)),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                  child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HomePage.id);
                },
                child: Text(
                  'الصفحة الرئيسية',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Cairo',
                      color: Color(0xffFC009E)),
                ),
              )),
              Text(
                'االعودة الى ',
                style: TextStyle(fontSize: 20.0, fontFamily: 'Cairo'),
              ),
            ],
          )
        ]));
  }
}
