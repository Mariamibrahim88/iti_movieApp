import 'package:flutter/material.dart';

class CustomNavigationTabBar extends StatelessWidget {
  const CustomNavigationTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: new Icon(
            Icons.movie_creation_rounded,
            color: Colors.white,
          ),

          label: 'Movies',
//label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.tv, color: Colors.white),
          label: 'Tvs',
        ),
      ]),
    );
  }
}
