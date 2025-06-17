import 'package:booky_app/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Colors.yellow, size: 16),
        SizedBox(width: 6),
        Text('4.1', style: Styles.textStyle16),
        SizedBox(width: 6),
        Text(
          '(2390)',
          style: Styles.textStyle16.copyWith(color: Color(0xff979797)),
        ),
      ],
    );
  }
}
