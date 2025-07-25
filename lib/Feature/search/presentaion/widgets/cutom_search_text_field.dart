import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: Icon(FontAwesomeIcons.magnifyingGlass),
        hint: Text('Search'),

        enabledBorder: searchTextBorder(),
        focusedBorder: searchTextBorder(),
      ),
    );
  }

  OutlineInputBorder searchTextBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
