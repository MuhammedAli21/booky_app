import 'package:booky_app/Feature/home/presentation/views/widgets/Custom_Book_Details_App_bar.dart';
import 'package:booky_app/Feature/home/presentation/views/widgets/action_buttons_book_details.dart';
import 'package:booky_app/Feature/home/presentation/views/widgets/book_details_and_rating.dart';
import 'package:booky_app/Feature/home/presentation/views/widgets/feature_list_view_item.dart';
import 'package:booky_app/Feature/home/presentation/views/widgets/similer_books_list_view.dart';
import 'package:booky_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                SizedBox(height: 10),
                SizedBox(width: width * .5, child: FeatureListViewItem()),
                SizedBox(height: 25),
                BookDetailsAndRating(),
                SizedBox(height: 20),
                ActionButtonsBookDetails(),
                Expanded(child: SizedBox(height: 50)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle18.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                SimilerBooksListView(),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
