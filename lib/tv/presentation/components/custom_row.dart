import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_iti/core/styles/icons_style.dart';
import 'package:movie_iti/core/styles/text_style.dart';

class CustomRow extends StatelessWidget {
  CustomRow(
      {super.key, required this.title, required this.icon, required this.text});

  String title;
  String text;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyles.TextRowTitle,
          ),
          Spacer(),
          Text(
            text,
            style: TextStyles.TextRow2,
          ),
          Icon(
            icon,
            size: IconsStyle.size,
          ),
        ],
      ),
    );
  }
}
