import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hammem/Model/questionModel.dart';
import 'package:hammem/provider/questionProvider.dart';
import 'package:hammem/screens/user/QuestionPage/Question2/Question2.dart';
import 'package:hammem/screens/user/QuestionPage/Question5/sliderHammem.dart';
import 'package:provider/provider.dart';

class Part3 extends StatefulWidget {
  static String id = 'Question1-part3';

  @override
  _Part3State createState() => _Part3State();
}

class _Part3State extends State<Part3> {
  List data1 = [
    'لعق القضيب',
    'لعق المهبل',
    'لعق الدبر(مستقيم)',
    'لعق الدبر(مرسل)',
    'وضعيه ال 69',
  ];
  List data2 = [
    'الأستمناء الفردى',
    'الأستمناء المزدوج',
    'العض الخفيف',
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
              Row(
                textDirection: TextDirection.rtl,
                children: <Widget>[
                  SizedBox(
                    width: 25.0,
                  ),
                  Text(
                    'الجنس الفموى',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xffFC009E),
                        fontFamily: 'Cairo'),
                  ),
                ],
              ),
              Container(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: data1.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 2.5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            data1[index],
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          SliderHammem(
                            title: data1[index],
                            id: 0,
                            other: true,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                textDirection: TextDirection.rtl,
                children: <Widget>[
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'متنوع',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xffFC009E),
                        fontFamily: 'Cairo'),
                  ),
                ],
              ),
              Container(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: data2.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 2.5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            data2[index],
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          SliderHammem(
                            title: data2[index],
                            id: 0,
                            other: true,
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
              Consumer<QuestionProvider>(
                builder: (context, provider, _) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1),
                  child: Builder(
                    builder: (context) => FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {
                        provider.generatePdfAndView(
                          context: context,
                          type: QuestionType.Text,
                          questionNum: 0,
                        );
                        Navigator.pushNamed(context, Question2.id);
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
                          width: MediaQuery.of(context).size.width * 0.4,
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
                ),
              ),
              SizedBox(
                height: 55.0,
              ),
            ],
          ),
        ));
  }
}
