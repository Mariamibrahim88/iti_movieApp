import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_iti/core/utils/functions/service_locator.dart';
import 'package:movie_iti/tv/presentation/components/popular_list_view_hor.dart';
import 'package:movie_iti/tv/presentation/components/popular_list_view_ver.dart';
import 'package:movie_iti/tv/presentation/controller/bloc/tv_bloc.dart';

class PopularTvListViewBody extends StatelessWidget {
  const PopularTvListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<TvBloc>()..add(GetPopularTvEvent()),
      child: const PopularListViewVer(),
    );
  }
}
