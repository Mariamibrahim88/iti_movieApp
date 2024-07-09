import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_iti/core/utils/functions/service_locator.dart';
import 'package:movie_iti/movie/presentation/components/popular_movie_list_view_hor.dart';
import 'package:movie_iti/movie/presentation/components/popular_movies_list_view_ver.dart';
import 'package:movie_iti/movie/presentation/controller/bloc/movies_bloc.dart';
import 'package:movie_iti/movie/presentation/controller/bloc/movies_event.dart';

class PopularMovieListViewBody extends StatelessWidget {
  const PopularMovieListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MoviesBloc>()..add(GetPopularMoviesEvent()),
      child: const PopularMoviesListViewVer(),
    );
  }
}
