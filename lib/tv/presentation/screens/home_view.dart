import 'package:flutter/material.dart';
import 'package:movie_iti/core/utils/functions/custom_navigate_bar.dart';
import 'package:movie_iti/tv/presentation/components/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: const HomeViewBody(),
      ),

      //CustomNavigationTabBar(),
    );
  }
}
