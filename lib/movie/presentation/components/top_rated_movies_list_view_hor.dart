import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_iti/core/utils/functions/enums.dart';
import 'package:movie_iti/movie/presentation/components/top_rated_movies_list_view_item_hor.dart';
import 'package:movie_iti/movie/presentation/controller/bloc/movies_bloc.dart';
import 'package:movie_iti/movie/presentation/controller/bloc/movies_state.dart';
import 'package:movie_iti/movie/presentation/screens/movie_datails_screen.dart';

class TopRatedMoviesListViewhor extends StatelessWidget {
  const TopRatedMoviesListViewhor({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      buildWhen: ((previous, current) =>
          previous.topRatedState != current.topRatedState),
      builder: (context, state) {
        switch (state.topRatedState) {
          case RequestState.loading:
          //return const ShimmerLoadingPopularhor();
          case RequestState.loaded:
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.23,
              child: ListView.builder(
                // itemCount: tv.
                itemCount: state.topRatedMovies.length,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                //itemCount: 10,
                itemBuilder: (context, index) {
                  final movvie = state.topRatedMovies[index];
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
                          child: TopRatedMoviesListViewItemHor(
                            movie: movvie,
                          )));
                },
              ),
            );
          case RequestState.error:
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.23,
              child: Center(
                child: Text(state.topRatedMessage),
              ),
            );
        }
      },
    );
  }
}
