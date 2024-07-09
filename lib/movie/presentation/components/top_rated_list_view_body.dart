import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_iti/core/utils/functions/service_locator.dart';
import 'package:movie_iti/movie/presentation/components/top_rated_movie_list_view_ver.dart';
import 'package:movie_iti/movie/presentation/components/top_rated_movies_list_view_hor.dart';
import 'package:movie_iti/movie/presentation/controller/bloc/movies_bloc.dart';
import 'package:movie_iti/movie/presentation/controller/bloc/movies_event.dart';

class TopRatedMoviesListViewBody extends StatelessWidget {
  const TopRatedMoviesListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MoviesBloc>()..add(GetTopRatedMoviesEvent()),
      child: const TopRatedMoviesListVer(),
    );
  }
}
