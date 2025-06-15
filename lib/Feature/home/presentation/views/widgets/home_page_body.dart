import 'package:booky_app/Feature/home/presentation/views/widgets/BestSellerListViewItem.dart';
import 'package:booky_app/Feature/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booky_app/Feature/home/presentation/views/widgets/feature_list_view.dart';
import 'package:booky_app/Feature/home/presentation/views/widgets/feature_list_view_item.dart';
import 'package:booky_app/core/styles.dart';
import 'package:booky_app/core/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeatureListView(),
        SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('Best Seller', style: Styles.textStyle18),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: BestSellerListViewitem(),
        ),
      ],
    );
  }
}
