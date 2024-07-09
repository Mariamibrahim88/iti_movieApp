import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_iti/core/utils/functions/app_bar.dart';
import 'package:movie_iti/core/utils/functions/enums.dart';
import 'package:movie_iti/movie/presentation/components/popular_movie_list_item_ver.dart';
import 'package:movie_iti/movie/presentation/controller/bloc/movies_bloc.dart';
import 'package:movie_iti/movie/presentation/controller/bloc/movies_state.dart';

class PopularMoviesListViewVer extends StatelessWidget {
  const PopularMoviesListViewVer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      buildWhen: ((previous, current) =>
          previous.popularState != current.popularState),
      builder: (context, state) {
        switch (state.popularState) {
          case RequestState.loading:
          //return ShimmerLoadingvertical();
          case RequestState.loaded:
            return SingleChildScrollView(
              child: Column(
                children: [
                  const appBar(
                    title: 'Popular Movies',
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.popularMovies.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      final movvie = state.popularMovies[index];

                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: PopularMovieListItemVer(movie: movvie),
                      );
                    },
                  ),
                ],
              ),
            );
          case RequestState.error:
            return Center(
              child: Text(state.populareMessage),
            );
        }
      },
    );
  }
}
