import 'package:booky_app/Feature/home/presentation/views/widgets/BestSellerListViewItem.dart';
import 'package:booky_app/Feature/home/presentation/views/widgets/best_seller_list.dart';
import 'package:booky_app/Feature/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booky_app/Feature/home/presentation/views/widgets/feature_list_view.dart';
import 'package:booky_app/core/styles.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeatureListView(),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text('Best Seller', style: Styles.textStyle18),
              ),
            ],
          ),
        ),
        BestSellerList(),
      ],
    );
  }
}
