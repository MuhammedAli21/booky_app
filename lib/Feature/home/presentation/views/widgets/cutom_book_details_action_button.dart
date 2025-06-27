import 'package:booky_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomBookDetailsActionButton extends StatelessWidget {
  const CustomBookDetailsActionButton({
    super.key,
    required this.backgroundColor,
    required this.borderRadius,
    required this.textColor,
    required this.buttonText,
  });
  final Color backgroundColor, textColor;
  final BorderRadiusGeometry borderRadius;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: Text(
          buttonText,
          style: Styles.textStyle18.copyWith(color: textColor),
        ),
      ),
    );
  }
}
