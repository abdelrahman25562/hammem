import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Info extends StatefulWidget {
  static String id = 'Infopage';

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'تعريف بالتطبيق',
                style: TextStyle(fontSize: 20.0, fontFamily: 'Cairo'),
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
                'المشكلة التي جاء التطبيق لحلها',
                style: TextStyle(color: Color(0xffFC009E), fontFamily: 'Cairo'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Image.asset(
                'assets/images/home1.png',
                height: 80.0,
                width: 90.0,
              ),
              Column(
                children: <Widget>[
                  Text(
                    'هي من أركان أي أسرة مستقرة ',
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontFamily: 'Cairo'),
                  ),
                  Text(
                    'وسعيدة. ولعل من أكبر أسباب فشل',
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontFamily: 'Cairo'),
                  ),
                  Text(
                    'الأزواج في تحقيق الاستقرار في   ',
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontFamily: 'Cairo'),
                  ),
                ],
              ),
            ],
          ),
          Text(
            '   لا شك أن العلاقة الحميمة السعيدة       ',
            textAlign: TextAlign.right,
            textDirection: TextDirection.ltr,
            style: TextStyle(fontFamily: 'Cairo'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'بيوتهم هي عدم وجود الحوار الصريح بينهم فيما يخص',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontFamily: 'Cairo'),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'تفاصيل هذه العلاقة, والبوح بما في صدورهم من',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontFamily: 'Cairo'),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'شكوى, ملاحظات, رغبات, أو تفصيلات مختلفة في هذه',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontFamily: 'Cairo'),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'العلاقة. وتتنوع أسباب عدم وجود هذا الحوار',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontFamily: 'Cairo'),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'بين الخجل, التحفظ, الحرص على مشاعر',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontFamily: 'Cairo'),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      '        الطرف الآخر.. وأسباب أخرى عديدة',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontFamily: 'Cairo'),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: <Widget>[
              SizedBox(
                width: 12.0,
              ),
              Text(
                'التطبيق يهدف الي',
                style: TextStyle(color: Color(0xffFC009E), fontFamily: 'Cairo'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Image.asset(
                'assets/images/home1.png',
                height: 80.0,
                width: 80.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: Text(
                      'ذلك كانت الحاجة لتصميم مثل هذا',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontFamily: 'Cairo'),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: Text(
                      'الاستبيان الذي من شأنه كسر حاجز',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontFamily: 'Cairo'),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: Text(
                      'بين الأزواج والسماح لكل طرف ',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontFamily: 'Cairo'),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1,
                    child: Text(
                      'بالتعرف على(الشخصية الجنسية) للطرف الآخر بكل سلاسة',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontFamily: 'Cairo'),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1,
                    child: Text(
                      'وبدون خجل, حتى يستطيع كل طرف تحقيق',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontFamily: 'Cairo'),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1,
                    child: Text(
                      'السعادة للآخر',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontFamily: 'Cairo'),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: <Widget>[
              SizedBox(
                width: 5.0,
              ),
              Text(
                'كيف تستخدم التطبيق',
                style: TextStyle(color: Color(0xffFC009E), fontFamily: 'Cairo'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      'الاستبيان عبارة عن أسئلة متنوعة تلخص معظم',
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontFamily: 'Cairo'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      'تفاصيل العلاقة الحميمة, تم حصرها بالاستعانة',
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontFamily: 'Cairo'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120.0),
                    child: Text(
                      'بمراجع علمية معتمدة.',
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontFamily: 'Cairo'),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      'من خلال الإجابة على هذه الأسئلة, فإن كل طرف',
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontFamily: 'Cairo'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 1.0),
                    child: Text(
                      'سيكون تقرير يصف بدقة (الشخصية الجنسية)',
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontFamily: 'Cairo'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(
                      'الخاصة به, والتي تصف ميوله وتطلعاته تجاه',
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontFamily: 'Cairo'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80.0),
                    child: Text(
                      'كافة تفاصيل العلاقة الحميمة.',
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontFamily: 'Cairo'),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 50.0,
          )
        ],
      ),
    );
  }
}
