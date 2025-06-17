import 'package:booky_app/Feature/home/presentation/views/widgets/feature_list_view_item.dart';
import 'package:flutter/material.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .15,
      child: ListView.builder(
        itemCount: 15,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: FeatureListViewItem(),
          );
        },
      ),
    );
  }
}
