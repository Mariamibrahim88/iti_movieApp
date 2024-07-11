import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_iti/core/utils/functions/enums.dart';
import 'package:movie_iti/movie/presentation/controller/bloc/movies_bloc.dart';
import 'package:movie_iti/movie/presentation/controller/bloc/movies_state.dart';
import 'package:movie_iti/movie/presentation/screens/movie_datails_screen.dart';

import 'popular_movie_list_item_hor.dart';

class PopularMovieListViewhor extends StatelessWidget {
  const PopularMovieListViewhor({
    super.key,
  });
  //final TvEntity tv;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      buildWhen: ((previous, current) =>
          previous.popularState != current.popularState),
      builder: (context, state) {
        switch (state.popularState) {
          case RequestState.loading:
          // return const ShimmerLoadingPopularhor(); // Show the shimmer loading widget
          case RequestState.loaded:
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.23,
              child: ListView.builder(
                // itemCount: tv.
                itemCount: state.popularMovies.length,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                //itemCount: 10,
                itemBuilder: (context, index) {
                  final movvie = state.popularMovies[index];

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MovieDetailScreen(id: movvie.id)));
                      },
                      child: PopularMovieListViewItemhor(movie: movvie),
                    ),
                  );
                },
              ),
            );
          case RequestState.error:
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.23,
              child: Center(
                child: Text(state.populareMessage),
              ),
            );
        }
      },
    );
  }
}
