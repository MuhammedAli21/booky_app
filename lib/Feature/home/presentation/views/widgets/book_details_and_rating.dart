import 'package:booky_app/Feature/home/presentation/views/widgets/rating_item.dart';
import 'package:booky_app/core/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsAndRating extends StatelessWidget {
  const BookDetailsAndRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('The Jungle Book', style: Styles.textStyle30),
        SizedBox(height: 8),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        SizedBox(height: 10),
        RatingItem(mainAxisAlignment: MainAxisAlignment.center),
      ],
    );
  }
}
