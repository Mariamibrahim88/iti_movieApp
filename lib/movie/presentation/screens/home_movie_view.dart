import 'package:flutter/material.dart';
import 'package:movie_iti/movie/presentation/components/home_movie_view_body.dart';

class HomeMovieView extends StatelessWidget {
  const HomeMovieView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: HomeViewBody(),
      ),

      //CustomNavigationTabBar(),
    );
  }
}
