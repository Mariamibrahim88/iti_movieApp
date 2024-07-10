import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_iti/core/utils/functions/service_locator.dart';
import 'package:movie_iti/movie/presentation/components/movie_datails_screen_body.dart';
import 'package:movie_iti/movie/presentation/controller/details_bloc/movie_datails_bloc.dart';
import 'package:movie_iti/movie/presentation/controller/details_bloc/movie_details_event.dart';

class MovieDetailScreen extends StatelessWidget {
  final int id;

  const MovieDetailScreen({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MovieDetailsBloc>()
        ..add(GetMovieDetailsEvent(id))
        ..add(GetMovieRecommendationEvent(id)),
      lazy: false,
      child: const Scaffold(
        body: MovieDetailContent(),
      ),
    );
  }
}
