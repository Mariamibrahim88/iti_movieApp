import 'package:flutter/material.dart';

class gradientImage extends StatelessWidget {
  const gradientImage(
      {super.key, required this.Topdirection, required this.Bottomdirection});

  final double Topdirection;
  final double Bottomdirection;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Topdirection,
      bottom: Bottomdirection,
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
    );
  }
}
