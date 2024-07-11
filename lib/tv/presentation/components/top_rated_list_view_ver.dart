import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:movie_iti/core/utils/functions/app_bar.dart';

import 'package:movie_iti/core/utils/functions/enums.dart';

import 'package:movie_iti/tv/presentation/components/top_rated_list_view_item_ver.dart';
import 'package:movie_iti/tv/presentation/controller/bloc/tv_bloc.dart';

class TopRatedListVer extends StatelessWidget {
  const TopRatedListVer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TvBloc, TvState>(
      buildWhen: ((previous, current) =>
          previous.topRatedTvState != current.topRatedTvState),
      builder: (context, state) {
        switch (state.topRatedTvState) {
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
                    itemCount: state.topRatedTv.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      final tvv = state.topRatedTv[index];

                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 2.0,
                        ),
                        child: TopRatedListItemVer(tv: tvv),
                      );
                    },
                  ),
                ],
              ),
            );
          case RequestState.error:
            return Center(
              child: Text(state.onAirtvmessage),
            );
        }
      },
    );
  }
}
