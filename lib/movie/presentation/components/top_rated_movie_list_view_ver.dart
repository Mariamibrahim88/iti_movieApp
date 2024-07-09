import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_iti/core/utils/functions/app_bar.dart';
import 'package:movie_iti/core/utils/functions/enums.dart';
import 'package:movie_iti/movie/presentation/components/top_rated_movies_list_view_item_ver.dart';
import 'package:movie_iti/movie/presentation/controller/bloc/movies_bloc.dart';
import 'package:movie_iti/movie/presentation/controller/bloc/movies_state.dart';

class TopRatedMoviesListVer extends StatelessWidget {
  const TopRatedMoviesListVer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      buildWhen: ((previous, current) =>
          previous.topRatedState != current.topRatedState),
      builder: (context, state) {
        switch (state.topRatedState) {
          case RequestState.loading:
          case RequestState.loaded:
            return SingleChildScrollView(
              child: Column(
                children: [
                  const appBar(
                    title: 'Top Rated Movies',
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.topRatedMovies.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      final movvie = state.topRatedMovies[index];

                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 2.0,
                        ),
                        child: TopRatedMoviesListItemVer(movie: movvie),
                      );
                    },
                  ),
                ],
              ),
            );
          case RequestState.error:
            return Center(
              child: Text(state.topRatedMessage),
            );
        }
      },
    );
  }
}
