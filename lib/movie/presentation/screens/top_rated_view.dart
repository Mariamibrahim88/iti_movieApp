import 'package:flutter/material.dart';
import 'package:movie_iti/movie/presentation/components/top_rated_list_view_body.dart';

class TopRatedMoviesListView extends StatelessWidget {
  const TopRatedMoviesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: TopRatedMoviesListViewBody(),
      ),
    );
  }
}
