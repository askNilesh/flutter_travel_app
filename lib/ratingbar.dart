import 'package:flutter/material.dart';

typedef void RatingChangeCallback(double rating);

class RatingBar extends StatelessWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback onRatingChanged;
  final Color color;
  double height = 12.0;
  double width = 12.0;

  RatingBar(
      {this.starCount = 5, this.rating = .0, this.onRatingChanged, this.color});

  Widget buildStar(BuildContext context, int index) {
    Widget icon;

    if (index >= rating) {
      icon = Icon(Icons.star_border,color: color ?? Theme.of(context).primaryColor,);
    } else if (index > rating - 1 && index < rating) {

      icon = new Icon(
        Icons.star_half,
        color: color ?? Theme.of(context).primaryColor,
      );
    } else {
      icon = Icon(Icons.star,color: color ?? Theme.of(context).primaryColor,);

    }

    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: InkResponse(
        onTap:
            onRatingChanged == null ? null : () => onRatingChanged(index + 1.0),
        child: icon,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
        children:
            List.generate(starCount, (index) => buildStar(context, index)));
  }
}

