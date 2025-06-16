import 'package:booky_app/Feature/home/presentation/views/widgets/rating_item.dart';
import 'package:booky_app/core/styles.dart';
import 'package:booky_app/core/utils.dart';
import 'package:flutter/material.dart';

class BestSellerListViewitem extends StatelessWidget {
  const BestSellerListViewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .17,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.4 / 4,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AssetsDate.testImage),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 250,
                  child: Text(
                    "Harry Potter and the Goblet of Fire",
                    style: Styles.textStyle20,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                SizedBox(height: 3),
                Text('J.K. Rowling', style: Styles.textStyle14),
                SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('19.99 €', style: Styles.textStyle20),
                    RatingItem(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
