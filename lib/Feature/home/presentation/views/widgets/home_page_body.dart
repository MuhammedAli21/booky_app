import 'package:booky_app/Feature/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CustomAppBar()]);
  }
}
