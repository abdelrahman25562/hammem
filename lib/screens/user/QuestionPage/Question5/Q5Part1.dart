import 'package:flutter/material.dart';
import 'package:hammem/screens/user/QuestionPage/Question5/Q5Part2.dart';
import 'package:hammem/screens/user/QuestionPage/Question5/sliderHammem.dart';
import 'package:hammem/widgets/StarRating.dart';

class Q5P1 extends StatefulWidget {
  static String id = 'Question5-Part1';

  @override
  _Q5P1State createState() => _Q5P1State();
}

class _Q5P1State extends State<Q5P1> {
  List<String> data = [
    'شعر اليد',
    'شعر الساق',
    'شعر الإبط',
    'شعر العانه',
    'شعر الشنب',
    'شعر اللحيه',
    'شعر الصدر(للرجال)',
  ];

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
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
                  style: TextStyle(fontSize: 20.0, fontFamily: 'Cairo'),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                'شعر الجسد',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Color(0xffFC009E),
                    fontFamily: 'Cairo'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Txt('كيف تفضل أن يكون شريكك'),
            ),
            Container(
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          data[index],
                          style: TextStyle(
                              fontSize: screen.size.width > 365 ? 12 : 10,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.bold),
                        ),
                        SliderHammem(
                          title: data[index],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
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
                  builder: (context) => FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      Navigator.pushNamed(context, Q5P2.id);
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
                )),
            SizedBox(
              height: 55.0,
            )
          ])),
    );
  }
}
