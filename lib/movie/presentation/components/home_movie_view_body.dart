import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_iti/core/utils/functions/service_locator.dart';
import 'package:movie_iti/core/utils/functions/spacing.dart';
import 'package:movie_iti/movie/presentation/components/custom_now_playing_movie.dart';
import 'package:movie_iti/movie/presentation/components/popular_movie_list_view_hor.dart';
import 'package:movie_iti/movie/presentation/components/top_rated_movies_list_view_hor.dart';
import 'package:movie_iti/movie/presentation/controller/bloc/movies_bloc.dart';
import 'package:movie_iti/movie/presentation/controller/bloc/movies_event.dart';
import 'package:movie_iti/tv/presentation/components/custom_row.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  //final TvEntity tv;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MoviesBloc>()
        ..add(GetNowPlayingMoviesEvent())
        ..add(GetPopularMoviesEvent())
        ..add(GetTopRatedMoviesEvent()),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomNowPlayingSection(),
            //verticalSpace(5),
            GestureDetector(
              onTap: () {
                //Navigator.pushNamed(context, '/popularTvListView');

                GoRouter.of(context).push('/popularMoviesListView');
                // GoRouter.of(context).push('/detailsView', extra: movies);
              },
              child: CustomRow(
                  title: "Popular",
                  text: "see More",
                  icon: Icons.arrow_forward_ios),
            ),
            verticalSpace(4),
            const PopularMovieListViewhor(),
            verticalSpace(14),
            GestureDetector(
              onTap: () {
                //Navigator.pushNamed(context, '/topRatedTvListView');
                GoRouter.of(context).push('/topRatedMoviesListView');
              },
              child: CustomRow(
                  title: "Top Rated",
                  text: "see More",
                  icon: Icons.arrow_forward_ios),
            ),
            verticalSpace(4),
            const TopRatedMoviesListViewhor(),
          ],
        ),
      ),
    );
  }
}
