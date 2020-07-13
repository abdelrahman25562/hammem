import 'package:flutter/material.dart';
import 'package:hammem/Model/questionModel.dart';
import 'package:hammem/provider/questionProvider.dart';
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
        child: Row(
          children: <Widget>[
            StarRating(
                rating: rating,
                onRatingChanged: (rating) {
                  String image = 'assets/images/1Star.JPG';
                  setState(() {
                    print('Rating ::::::' + rating.toString());
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
                    print('Rating ::::::' + image);
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
            Spacer(),
            Txt(widget.title)
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
