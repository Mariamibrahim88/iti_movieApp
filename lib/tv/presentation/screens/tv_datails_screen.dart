import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_iti/core/utils/functions/service_locator.dart';
import 'package:movie_iti/tv/presentation/components/tv_datails_screen_body.dart';
import 'package:movie_iti/tv/presentation/controller/details_bloc/tv_datails_bloc.dart';
import 'package:movie_iti/tv/presentation/controller/details_bloc/tv_details_event.dart';

class TvDetailScreen extends StatelessWidget {
  final dynamic id;

  const TvDetailScreen({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<TvDetailsBloc>()
        ..add(GetTvDetailsEvent(id))
        ..add(GetTvRecommendationEvent(id)),
      lazy: false,
      child: const Scaffold(
        body: TvDetailContent(),
      ),
    );
  }
}
