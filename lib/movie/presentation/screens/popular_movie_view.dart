import 'package:flutter/material.dart';
import 'package:movie_iti/movie/presentation/components/popular_movie_list_view_body.dart';

class PopularMovieListView extends StatelessWidget {
  const PopularMovieListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: PopularMovieListViewBody(),
      ),
    );
  }
}
