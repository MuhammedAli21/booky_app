import 'package:booky_app/core/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Row(
          children: [
            Image.asset(AssetsDate.bookLogo, height: 38),
            SizedBox(width: 8),
            Text(
              'Bookly App',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.magnifyingGlass),
            ),
          ],
        ),
      ),
    );
  }
}
