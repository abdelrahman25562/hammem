import 'package:flutter/material.dart';
import 'package:hammem/Model/questionModel.dart';
import 'package:hammem/provider/questionProvider.dart';
import 'package:hammem/screens/user/QuestionPage/FinalPage.dart';
import 'package:hammem/screens/user/QuestionPage/Question6/buttonQ6.dart';
import 'package:provider/provider.dart';

class Q6P1 extends StatefulWidget {
  static String id = 'Question6-Part1';

  @override
  _Q6P1State createState() => _Q6P1State();
}

class _Q6P1State extends State<Q6P1> {
  Color _buttonColor1 = Colors.orangeAccent;
  Color _buttonColor2 = Colors.white;
  Color _buttonColor3 = Colors.white;
  Color _buttonColor4 = Colors.white;
  Color _buttonColor5 = Colors.white;
  Color _buttonColor6 = Colors.white;

  Color _buttonColor7 = Colors.white;
  Color _buttonColor8 = Colors.white;
  Color _buttonColor9 = Colors.white;
  Color _buttonColor10 = Colors.white;

  List<String> data = [
    'الاستثارة بالتقييد',
    'الاستثارة بالأقدام',
    'لعب الأدوار',
    'الاستثارة باللاتيكس والجلود',
    'التدليل كالاطفال',
    'لعبة التابع والسيد',
    'الأزياء المتعاكسة',
    'الكلام البذئ',
    'الأدوات الجنسية',
    'الأزياء',
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          elevation: 0.0,
        ),
        body: ListView(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'الاستبيان',
                  style: TextStyle(fontSize: 25.0, fontFamily: 'Cairo'),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'هل لديك أي تفضيلات جنسية غير تقليدية',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'هذه قائمة بأكثر التفضيلات الجنسية الغير تقليدية شيوعاً قم باختيار منها ما تفضلة',
                style: TextStyle(
                    fontSize: 16.0, color: Colors.black, fontFamily: 'Cairo'),
              ),
            ),
            Container(
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ButtonQ6(
                    question: data[index],
                  );
                },
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: Builder(
                  builder: (context) => Consumer<QuestionProvider>(
                    builder: (context, provider, _) => FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {
                        provider.generatePdfAndView(
                          context: context,
                          questionNum: 5,
                          type: QuestionType.Text,
                        );
                        Navigator.pushNamed(context, Final.id);
                      },
                      child: Ink(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: <Color>[
                            Colors.blueAccent,
                            Colors.pinkAccent
                          ]),
                          borderRadius: BorderRadius.all(Radius.circular(80.0)),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          alignment: Alignment.center,
                          child: Text(
                            'متابعه',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontFamily: 'Cairo'),
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
            SizedBox(
              height: 55.0,
            ),
          ],
        ),
      ),
    );
  }
}
