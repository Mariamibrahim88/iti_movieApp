import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_iti/core/utils/functions/service_locator.dart';
import 'package:movie_iti/core/utils/functions/spacing.dart';
import 'package:movie_iti/tv/presentation/components/custom_on_the_air_section.dart';

import 'package:movie_iti/tv/presentation/components/custom_row.dart';
import 'package:movie_iti/tv/presentation/components/popular_list_view_hor.dart';

import 'package:movie_iti/tv/presentation/components/top_rated_list_view_hor.dart';
import 'package:movie_iti/tv/presentation/controller/bloc/tv_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  //final TvEntity tv;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<TvBloc>()
        ..add(OnAirTvEvent())
        ..add(GetPopularTvEvent())
        ..add(GetTopRatedTvEvent()),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomOnTheAirSection(),
            //verticalSpace(5),
            GestureDetector(
              onTap: () {
                //Navigator.pushNamed(context, '/popularTvListView');

                GoRouter.of(context).push('/popularTvListView');
                // GoRouter.of(context).push('/detailsView', extra: movies);
              },
              child: CustomRow(
                  title: "Popular",
                  text: "see More",
                  icon: Icons.arrow_forward_ios),
            ),
            verticalSpace(4),
            // const PopularListViewhor(),
            verticalSpace(14),
            GestureDetector(
              onTap: () {
                //Navigator.pushNamed(context, '/topRatedTvListView');
                GoRouter.of(context).push('/topRatedTvListView');
              },
              child: CustomRow(
                  title: "Top Rated",
                  text: "see More",
                  icon: Icons.arrow_forward_ios),
            ),
            verticalSpace(4),
            //const TopRatedListViewhor(),
          ],
        ),
      ),
    );
  }
}
