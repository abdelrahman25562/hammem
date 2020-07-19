import 'package:flutter/material.dart';
import 'package:hammem/Model/questionModel.dart';
import 'package:hammem/provider/questionProvider.dart';
import 'package:hammem/screens/user/dialog.dart';
import 'package:provider/provider.dart';

typedef void RatingChangeCallback(double rating);

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback onRatingChanged;
  final Color color;

  StarRating(
      {this.starCount = 5, this.rating = .0, this.onRatingChanged, this.color});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = new Icon(
        Icons.star_border,
        color: Theme.of(context).buttonColor,
      );
    } else if (index > rating - 1 && index < rating) {
      icon = new Icon(
        Icons.star_half,
        color: color ?? Colors.orangeAccent,
      );
    } else {
      icon = new Icon(
        Icons.star,
        color: color ?? Colors.orangeAccent,
      );
    }
    return new InkResponse(
      onTap:
          onRatingChanged == null ? null : () => onRatingChanged(index + 1.0),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
        children:
            new List.generate(starCount, (index) => buildStar(context, index)));
  }
}

class Rating extends StatefulWidget {
  final String title;
  final int questionPageNumber;

  Rating({
    @required this.title,
    @required this.questionPageNumber,
  });

  @override
  _RatingState createState() => new _RatingState();
}

class _RatingState extends State<Rating> {
  double rating = 1.0;

  @override
  Widget build(BuildContext context) {
    return Consumer<QuestionProvider>(
      builder: (context, data, _) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 2.0,
        ),
        child: widget.title=='لعق الدبر(مستقيم)'||widget.title=='لعق الدبر(مرسل)'||widget.title=='الأستمناء المزدوج'
            ||widget.title=='مساج الدبر'||widget.title=='مساج البظر'||widget.title=='القبله الفرنسيه'
            ||widget.title=='قبله الشفه الواحده'||widget.title=='حضن الملعقه'||widget.title=='وضعيه ال 69'||widget.title=='مساج البروستاتا'||
          widget.title=='G-spotمساج ال'|| widget.title=='مساج الخصيه'?
        Row(
          children: <Widget>[
           Row(children: <Widget>[
             Txt(widget.title),
             InkWell(
               onTap: (){
                 showDialog(
                   context: context,
                   builder: (ctx) => DialogStructure(
                     content: widget.title=='لعق الدبر(مستقيم)'?Text('منطقة الشرج وما حولها بها تركيز كبيرمن الأعصاب الحسية, مما يجعلها من أكثر المناطق حساسية للاستثارة عند الرجل والمرأة. (ملاحظة: تنطوي هذه الممارسة على بعض المحاذير الطبية لوجود بكتيريا الجهاز الهضمي فيها, وتتطلب درجة عالية من النظافة الشخصية)'):widget.title=='لعق الدبر(مرسل)'?Text('منطقة الشرج وما حولها بها تركيز كبيرمن الأعصاب الحسية, مما يجعلها من أكثر المناطق حساسية للاستثارة عند الرجل والمرأة. (ملاحظة: تنطوي هذه الممارسة على بعض المحاذير الطبية لوجود بكتيريا الجهاز الهضمي فيها, وتتطلب درجة عالية من النظافة الشخصية)'):
                         widget.title=='الأستمناء المزدوج'?Text('لهذه الممارسة صورتين: الأولى: أن يقوم كل طرف بإمتاع الطرف الأخر بيده. الثانية: أن يقوم كل طرف بإمتاع نفسه بيده أمام الطرف الاخر'):widget.title=='مساج البظر'?Text('إن البظر (بالإنجليزية: Clitoris) هو عضو صغير جنسي في الجهاز التناسلي عند الأنثى، يشابه قضيب الرجل ويقع بظر المراة ويقع عند التقاء الشفرين الصغيرين من أعلى فوق فتحة البول والمهبل. تميز البظر باحتوائه على عدد ضخم من النهايات العصبية القابلة للاستثارة عند اقل ملامسة له ولذلك يعتبر من أكثر أعضاء المرأة حساسية للإثارة الجنسية وتؤدي اثارة البظر للوصول إلى رعشة جنسية .'):
                             widget.title=='مساج الدبر'?Text('تبدأ بالتدليك الخفيف بحركات دائريه لفتحه الشرج ثم إختراقها بالأصابع بلطف وتدليكها من الداخل يجب استحدام مزلق حميمي في هذه الخطوه نظرا لعدم قدره فتحه الشرج علي إنتاج الإفرازات المرطبه مثل المهبل ما قد يعرض شريكتك بالإصابه والألم'):
                             widget.title=='القبله الفرنسيه'?Text('هي قبلة يقوم فيها أحد أو كلا الطرفين بملامسة لسان أو شفاه الآخر وعادة إدخال لسانه داخل فم الآخر. تكون القبلة الفرنسية بطيئة، رومانسية، شبقية، حيث أن الفم من مناطق الشهوة الجنسية الأساسية'):
                             widget.title=='قبله الشفه الواحده'?Text("When two people enjoy a single-lip kiss they are kissing only one of their partner's lips at a time. This type of kiss is more intimate than a peck because the partners choose to be deeply focused on one section of the other's mouth. ... According to Phil, the single-lip kiss is a kiss that is 'truly all about love") :
                             widget.title=='حضن الملعقه'?Text('نعم الملعقة: الوضعية المفضلة عند كل زوجين, خصوصا إذا كانا متزوجين منذ 3 إلى 5 سنوات. يقول عالم النفس Samuel Dunkell "عندما تأخذ المرأة الوضعية الخلفية, هذا قد يشير إلى أنها الشريك الذي يعطي أثر, أو أنها بحاجة إلى اهتمام". شكل الملعقة هو الذي يؤمن أكبر قدر من الاحتكاك مع الشريك. ليس لهذا مغزى جنسيًا بالضرورة, "إنها بالأحرى قوقعة آمنة ومريحة", كما تقول الأخصائية النفسية Shirley P. Glass'):
                             widget.title=='وضعيه ال 69'?Text('هو من الأوضاع الجنسية التي يضع الرجل والمرأة فمهما بالقرب من العضو التناسلي للآخر، أو يقوم الرجل بلعق فرج المرأة وتقوم المرأة بلعق قضيب الرجل وهذا الوضع يتيح للطرفين التهيج الجنسي للطرفين للاستعداد قبل الجماع وهي تساعد الزوجة على سرعة الوصول النشوة والمشاركون هم بالتالي متبادل مقلوب مثل أرقام 6 و9، ومن هنا جاءت تسميته.'):
                                 widget.title=='مساج البروستاتا'?Text("تقع البروستاتا علي بعد سنتيمترات من فتحه الشرج ويوفر تدليكها متعه عميقه للغايه تؤدي الي وصول نشوه جنسيه أقوي والذ.يتم مساج البروستاتا عن طريق إدخال الاصبع في فتحه الشرج ثم الضغط عليها من الداخل والتدليك "):
                                 widget.title=='G-spotمساج ال'?Text(' هى منطقة داخل المهبل فى الجدار الأمامى تبعد 2 سنتيمتر عن غشاء البكارة'):
                                 widget.title=='مساج الخصيه'?Text('منطقة الخصية هي من مناطق الٌثارة عند الرجل، وتدليكها برفق يولد شعور من المتعة عند معظم الرجال'):Text(''),
                     img: widget.title=='مساج البظر'?Image.asset('assets/images/mi.jpg',height: 100,width: 100,)
                         :widget.title=='الأستمناء المزدوج'?Image.asset('assets/images/mo.jpg',height: 100,width: 100,)
                         :widget.title=='حضن الملعقه'?Image.asset('assets/images/mr.jpg',height: 100,width: 100,):
                     widget.title=='G-spotمساج ال'?Image.asset('assets/images/ms.jpg',height: 100,width: 100,):Container(),
                   ),
                 );
               },
                 child: Image.asset('assets/images/que.png')),
           ],),
            Spacer(),
            StarRating(
                rating: rating,
                onRatingChanged: (rating) {
                  String image = 'assets/images/1Star.JPG';
                  setState(() {
                    this.rating = rating;
                    if (rating <= 1) {
                      image = 'assets/images/1Star.JPG';
                    } else if (rating > 1 && rating <= 2) {
                      image = 'assets/images/2Star.JPG';
                    } else if (rating > 2 && rating <= 3) {
                      image = 'assets/images/3Star.JPG';
                    } else if (rating > 3 && rating <= 4) {
                      image = 'assets/images/4Star.JPG';
                    } else if (rating > 4 && rating <= 5) {
                      image = 'assets/images/5Star.JPG';
                    } else {
                      image = 'assets/images/1Star.JPG';
                    }
                    data.addAnswer(
                      element: QuestionModel(
                        id: widget.questionPageNumber,
                        answer: image,
                        question: widget.title,
                        questionType: QuestionType.Image,
                      ),
                    );
                  });
                }),
          ],
        ):
        Row(
          children: <Widget>[
            Txt(widget.title),
            Spacer(),
            StarRating(
                rating: rating,
                onRatingChanged: (rating) {
                  String image = 'assets/images/1Star.JPG';
                  setState(() {
                    this.rating = rating;
                    if (rating <= 1) {
                      image = 'assets/images/1Star.JPG';
                    } else if (rating > 1 && rating <= 2) {
                      image = 'assets/images/2Star.JPG';
                    } else if (rating > 2 && rating <= 3) {
                      image = 'assets/images/3Star.JPG';
                    } else if (rating > 3 && rating <= 4) {
                      image = 'assets/images/4Star.JPG';
                    } else if (rating > 4 && rating <= 5) {
                      image = 'assets/images/5Star.JPG';
                    } else {
                      image = 'assets/images/1Star.JPG';
                    }
                    data.addAnswer(
                      element: QuestionModel(
                        id: widget.questionPageNumber,
                        answer: image,
                        question: widget.title,
                        questionType: QuestionType.Image,
                      ),
                    );
                  });
                }),
          ],
        ),
      ),
    );
  }
}

//=================Test========================================//
class Txt extends StatelessWidget {
  final String txt;

  Txt(this.txt);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$txt',
      style: TextStyle(fontSize: 13.0, fontFamily: 'Cairo'),
    );
  }
}
