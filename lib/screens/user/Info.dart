import 'package:flutter/cupertino.dart';
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
    return Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
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
                      style: TextStyle(
                          color: Color(0xffFC009E), fontFamily: 'Cairo'),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Text(
                          'لا شك أن العلاقة الحميمة السعيدة هي من أركان أي أسرة مستقرة وسعيدة. ولعل من أكبر أسباب فشل الأزواج في تحقيق الاستقرار في',
                          style: TextStyle(fontFamily: 'Cairo'),
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/images/problem-solving.png',
                      height: 73.0,
                      width: 69.0,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.95,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 6.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Text(
                                'بيوتهم هي عدم وجود الحوار الصريح بينهم فيما يخص تفاصيل هذه العلاقة, والبوح بما في صدورهم من شكوى, ملاحظات, رغبات, أو تفصيلات مختلفة في هذه العلاقة. وتتنوع أسباب عدم وجود هذا الحوار',
                                style: TextStyle(fontFamily: 'Cairo'),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.95,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 6.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Text(
                                'بين الخجل, التحفظ, الحرص على مشاعر الطرف الآخر.. وأسباب أخرى عديدة.',
                                style: TextStyle(fontFamily: 'Cairo'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Text(
                          'ذلك كانت الحاجة لتصميم مثل هذا الاستبيان الذي من شأنه كسر الحاجز بين الأزواج والسماح لكل طرف بالتعرف على (الشخصية الجنسية) للطرف الآخر بكل سلاسة وبدون خجل, حتى يستطيع كل طرف تحقيق السعادة للآخر.',
                          style: TextStyle(fontFamily: 'Cairo'),
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/images/trophy.png',
                      height: 73.0,
                      width: 69.0,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.95,
                            child: Text(
                              'بالتعرف على (الشخصية الجنسية) للطرف الآخر بكل سلاسة وبدون خجل, حتى يستطيع كل طرف تحقيق السعادة للآخر.',
                              style: TextStyle(fontFamily: 'Cairo'),
                            ),
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
                      style: TextStyle(
                          color: Color(0xffFC009E), fontFamily: 'Cairo'),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: Text(
                              'الاستبيان عبارة عن أسئلة متنوعة تلخص معظم تفاصيل العلاقة الحميمة, تم حصرها بالاستعانة بمراجع علمية معتمدة.',
                              style: TextStyle(fontFamily: 'Cairo'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: Text(
                              'من خلال الإجابة على هذه الأسئلة, فإن كل طرف سيكون تقرير يصف بدقة (الشخصية الجنسية) الخاصة به, والتي تصف ميوله وتطلعاته تجاه كافة تفاصيل العلاقة الحميمة.',
                              style: TextStyle(fontFamily: 'Cairo'),
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: Text(
                                  'جانب معظم أسئلة الاستبيان هناك  أيقونة مساعدة (؟)',
                                  style: TextStyle(fontFamily: 'Cairo'),
                                ),
                              ),
                            ),
                            Image.asset(
                              'assets/images/question-mark.png',
                              height: 73.0,
                              width: 69.0,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: Text(
                              'عند الضغط عليها يمكن للمستخدم استيضاح ما عجز عن فهمه من تفاصيل الممارسات. وهي فرصة جيدة ليجرب الزوجين ما استجد بالنسبة لهم من ممارسات جديدة عليهم, واستكشاف عوالم جديدة في علاقتهم الحميمة.',
                              style: TextStyle(fontFamily: 'Cairo'),
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: Text(
                                  'بعد الإجابة عن أسئلة الاستبيان, يقوم كل طرف بإطلاع تقريره للطرف الآخر, وهو ما سيشكل بداية ممتازة للحوار بينهم لاحقاً في تفاصيل التقرير.',
                                  style: TextStyle(fontFamily: 'Cairo'),
                                ),
                              ),
                            ),
                            Image.asset(
                              'assets/images/finish-line.png',
                              height: 73.0,
                              width: 69.0,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.copyright,
                              color: Colors.grey,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: Text(
                                  'حقوق النشر وجميع محتويات هذا الاستبيان محمية بموجب المنظمة الدولية لحماية الملكية الفكرية رقم: NP20911',
                                  style: TextStyle(
                                      fontFamily: 'Cairo', fontSize: 12.0),
                                ),
                              ),
                            ),
                          ],
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
          ),
        ));
  }
}
