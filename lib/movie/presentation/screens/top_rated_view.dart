import 'package:flutter/material.dart';
import 'package:movie_iti/movie/presentation/components/top_rated_list_view_body.dart';

class TopRatedTvListView extends StatelessWidget {
  const TopRatedTvListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: TopRatedMoviesListViewBody(),
      ),
    );
  }
}
