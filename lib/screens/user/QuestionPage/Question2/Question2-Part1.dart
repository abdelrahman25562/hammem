import 'package:flutter/material.dart';
import 'package:hammem/Model/questionModel.dart';
import 'package:hammem/provider/questionProvider.dart';
import 'package:hammem/screens/user/QuestionPage/Question3/Question3-Part1.dart';
import 'package:hammem/widgets/Text-Box.dart';
import 'package:provider/provider.dart';

class Q2Part1 extends StatefulWidget {
  static String id = 'Question2-part1';

  @override
  _Q2Part1State createState() => _Q2Part1State();
}

class _Q2Part1State extends State<Q2Part1> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(icon: Icon(Icons.arrow_forward_ios,color: Colors.black,), onPressed: (){
            Navigator.pop(context);
          }),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                child: Text(
                  'الاستبيان',
                  style: TextStyle(fontSize: 20.0, fontFamily: 'Cairo'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  'قم باختيار الوضعيات الأفضل والأسوأ من الوضعيات التالية حسب كل رقم وضعية',
                  style: TextStyle(fontSize: 20.0, fontFamily: 'Cairo'),
                ),
              ),
              Image.asset(
                'assets/images/one.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                fit: BoxFit.fill,
              ),
              Image.asset(
                'assets/images/two.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                fit: BoxFit.fill,
              ),
              Image.asset(
                'assets/images/three.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  'أفضل الوضعيات بالنسبة لي هي:',
                  style: TextStyle(fontSize: 20.0, fontFamily: 'Cairo'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  'أكتب أرقام الوضعيات المفضلة مرتبة بحسب الأفضلية',
                  style: TextStyle(fontSize: 18.0, fontFamily: 'Cairo'),
                ),
              ),
              CustomTxtField(
                color: Colors.black,
                hint: 'المركز الأول',
                question: 'أفضل الوضعيات بالنسبة لي هي',
              ),
              SizedBox(
                height: 2.0,
              ),
              CustomTxtField(
                color: Colors.black,
                hint: 'المركز الثانى',
                question: 'أفضل الوضعيات بالنسبة لي هي',
              ),
              SizedBox(
                height: 2.0,
              ),
              CustomTxtField(
                color: Colors.black,
                hint: 'المركز الثالث',
                question: 'أفضل الوضعيات بالنسبة لي هي',
              ),
              SizedBox(
                height: 2.0,
              ),
              CustomTxtField(
                color: Colors.black,
                hint: 'المركز الرابع',
                question: 'أفضل الوضعيات بالنسبة لي هي',
              ),
              SizedBox(
                height: 2.0,
              ),
              CustomTxtField(
                color: Colors.black,
                hint: 'المركز الخامس',
                question: 'أفضل الوضعيات بالنسبة لي هي',
              ),
              SizedBox(
                height: 2.0,
              ),
              CustomTxtField(
                color: Colors.black,
                hint: 'المركز السادس',
                question: 'أفضل الوضعيات بالنسبة لي هي',
              ),
              SizedBox(
                height: 2.0,
              ),
              CustomTxtField(
                color: Colors.black,
                hint: 'المركز السابع',
                question: 'أفضل الوضعيات بالنسبة لي هي',
              ),
              SizedBox(
                height: 2.0,
              ),
              CustomTxtField(
                color: Colors.black,
                hint: 'المركز الثامن',
                question: 'أفضل الوضعيات بالنسبة لي هي',
              ),
              SizedBox(
                height: 2.0,
              ),
              CustomTxtField(
                color: Colors.black,
                hint: 'المركز التاسع',
                question: 'أفضل الوضعيات بالنسبة لي هي',
              ),
              SizedBox(
                height: 2.0,
              ),
              CustomTxtField(
                color: Colors.black,
                hint: 'المركز العاشر',
                question: 'أفضل الوضعيات بالنسبة لي هي',
              ),
              SizedBox(
                height: 2.0,
              ),

              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  'أسوأ الوضعيات بالنسبة لي هي:',
                  style: TextStyle(fontSize: 20.0, fontFamily: 'Cairo'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  'أكتب أرقام الوضعيات الغير محببة, مرتبة بحسب الكراهة',
                  style: TextStyle(fontSize: 18.0, fontFamily: 'Cairo'),
                ),
              ),
              CustomTxtField(
                color: Colors.black,
                hint: 'المركز الأول',
                question: 'أسؤا الوضعيات بالنسبة لي هي',
              ),
              SizedBox(
                height: 2.0,
              ),
              CustomTxtField(
                color: Colors.black,
                hint: 'المركز الثانى',
                question: 'أسؤا الوضعيات بالنسبة لي هي',
              ),
              SizedBox(
                height: 2.0,
              ),
              CustomTxtField(
                color: Colors.black,
                hint: 'المركز الثالث',
                question: 'أسؤا الوضعيات بالنسبة لي هي',
              ),
              SizedBox(
                height: 2.0,
              ),
              CustomTxtField(
                color: Colors.black,
                hint: 'المركز الرابع',
                question: 'أسؤا الوضعيات بالنسبة لي هي',
              ),
              SizedBox(
                height: 2.0,
              ),
              CustomTxtField(
                color: Colors.black,
                hint: 'المركز الخامس',
                question: 'أسؤا الوضعيات بالنسبة لي هي',
              ),
              SizedBox(
                height: 2.0,
              ),
              CustomTxtField(
                color: Colors.black,
                hint: 'المركز السادس',
                question: 'أسؤا الوضعيات بالنسبة لي هي',
              ),
              SizedBox(
                height: 2.0,
              ),
              CustomTxtField(
                color: Colors.black,
                hint: 'المركز السابع',
                question: 'أسؤا الوضعيات بالنسبة لي هي',
              ),
              SizedBox(
                height: 2.0,
              ),
              CustomTxtField(
                color: Colors.black,
                hint: 'المركز الثامن',
                question: 'أسؤا الوضعيات بالنسبة لي هي',
              ),
              SizedBox(
                height: 2.0,
              ),
              CustomTxtField(
                color: Colors.black,
                hint: 'المركز التاسع',
                question: 'أسؤا الوضعيات بالنسبة لي هي',
              ),
              SizedBox(
                height: 2.0,
              ),
              CustomTxtField(
                color: Colors.black,
                hint: 'المركز العاشر',
                question: 'أسؤا الوضعيات بالنسبة لي هي',
              ),
              SizedBox(
                height: 15.0,
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
                          questionNum: 1,
                          type: QuestionType.Text,
                        );
                        Navigator.pushNamed(context, Q3Part1.id);
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
                          width: MediaQuery.of(context).size.width * 0.5,
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
        ),
      ),
    );
  }
}
