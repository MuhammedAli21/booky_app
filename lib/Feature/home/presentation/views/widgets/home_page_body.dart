import 'package:booky_app/Feature/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booky_app/Feature/home/presentation/views/widgets/feature_list_view.dart';
import 'package:booky_app/Feature/home/presentation/views/widgets/feature_list_view_item.dart';
import 'package:booky_app/core/styles.dart';
import 'package:booky_app/core/utils.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeatureListView(),
        SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('Best Seller', style: Styles.medium18),
        ),
      ],
    );
  }
}
