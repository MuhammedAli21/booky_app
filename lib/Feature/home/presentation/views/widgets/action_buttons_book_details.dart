import 'package:booky_app/Feature/home/presentation/views/widgets/cutom_book_details_action_button.dart';
import 'package:booky_app/constents.dart';
import 'package:flutter/material.dart';

class ActionButtonsBookDetails extends StatelessWidget {
  const ActionButtonsBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomBookDetailsActionButton(
            buttonText: '19.99€',
            backgroundColor: kGrayishColor,
            textColor: Colors.black,
            borderRadius: BorderRadiusGeometry.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
        ),
        Expanded(
          child: CustomBookDetailsActionButton(
            buttonText: 'Free Preview',
            backgroundColor: kNavyColor,
            textColor: Colors.white,
            borderRadius: BorderRadiusGeometry.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
        ),
      ],
    );
  }
}
