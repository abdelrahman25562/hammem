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
  double rating = 3.5;

  @override
  Widget build(BuildContext context) {
    return Consumer<QuestionProvider>(
      builder: (context, data, _) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 2.0,
        ),
        child: widget.title=='لعق الدبر(مستقيم)'||widget.title=='لعق الدبر(مرسل)'||widget.title=='الأستمناء المزدوج'||widget.title=='مساج الدبر'||widget.title=='مساج البظر'? Row(
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
                             widget.title=='مساج الدبر'?Text('تبدأ بالتدليك الخفيف بحركات دائريه لفتحه الشرج ثم إختراقها بالأصابع بلطف وتدليكها من الداخل يجب استحدام مزلق حميمي في هذه الخطوه نظرا لعدم قدره فتحه الشرج علي إنتاج الإفرازات المرطبه مثل المهبل ما قد يعرض شريكتك بالإصابه والألم'):Text(''),
                     img: widget.title=='مساج البظر'?Image.asset('assets/images/mi.jpg',height: 100,width: 100,):widget.title=='الأستمناء المزدوج'?Image.asset('assets/images/mo.jpg',height: 100,width: 100,):Container(),
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
