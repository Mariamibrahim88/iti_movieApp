import 'package:flutter/material.dart';
import 'package:movie_iti/core/styles/text_style.dart';
import 'package:movie_iti/core/utils/functions/spacing.dart';

class CustomOnTheAirSection extends StatelessWidget {
  CustomOnTheAirSection();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          child: Image.asset(
            'assets/tv_image.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 350,
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          height: 50,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.transparent,
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          height: 50,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.transparent,
                ],
              ),
            ),
          ),
        ),
        Positioned(
            height: 150,
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.circle,
                      size: 16,
                      color: Colors.red,
                    ),
                    Text(
                      'On The Air'.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                verticalSpace(15),
                Text(
                  'Movie Name',
                  style: TextStyles.TextRowTitle,
                )
              ],
            )),
      ],
    );
  }
}
