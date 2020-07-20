import 'package:flutter/material.dart';
import 'package:hammem/Model/questionModel.dart';
import 'package:hammem/provider/questionProvider.dart';
import 'package:hammem/screens/user/QuestionPage/Question6/Question6.dart';
import 'package:hammem/widgets/StarRating.dart';
import 'package:provider/provider.dart';

class Q5P2 extends StatefulWidget {
  static String id = 'Question5-Part2';

  @override
  _Q5P2State createState() => _Q5P2State();
}

class _Q5P2State extends State<Q5P2> {
  List<bool> _list = [true, false, true, false];
  List<String> data = [
    'رائحة الجسد بشكل عام',
    'رائحة الابط',
    'رائحة منطقة العانة',
    'رائحة الفم',
    'رائحة اللحية',
    'رائحة القدم',
    'رائحة الشعر',
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
          body: ListView(children: <Widget>[
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
            Row(
              textDirection: TextDirection.rtl,
              children: <Widget>[
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'روائح الجسد',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xffFC009E),
                      fontFamily: 'Cairo'),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.09,
                ),
                Txt('كيف تقيم رائحة الشريك بالعادة')
              ],
            ),
            Container(
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Rating(
                    questionPageNumber: 4,
                    title: data[index],
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
                          type: QuestionType.Text,
                          questionNum: 4,
                          context: context,
                        );
                        Navigator.pushNamed(context, Q6.id);
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
                                fontSize: 25.0,
                                fontFamily: 'Cairo'),
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
            SizedBox(
              height: 55.0,
            )
          ])),
    );
  }
}
