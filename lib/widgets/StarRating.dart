import 'package:flutter/material.dart';

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

  Rating({this.title});

  @override
  _RatingState createState() => new _RatingState();
}

class _RatingState extends State<Rating> {
  double rating = 3.5;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        StarRating(
          rating: rating,
          onRatingChanged: (rating) => setState(() => this.rating = rating),
        ),
        Txt(widget.title)
      ],
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
