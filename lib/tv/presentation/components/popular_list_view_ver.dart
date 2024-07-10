import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_iti/core/styles/text_style.dart';
import 'package:movie_iti/core/utils/functions/app_bar.dart';

import 'package:movie_iti/core/utils/functions/enums.dart';
import 'package:movie_iti/core/utils/functions/spacing.dart';
import 'package:movie_iti/tv/presentation/components/popular_list_item_ver.dart';
import 'package:movie_iti/tv/presentation/components/shimmer_custom_loading.dart';
import 'package:movie_iti/tv/presentation/controller/bloc/tv_bloc.dart';
import 'package:shimmer/shimmer.dart';

class PopularListViewVer extends StatelessWidget {
  const PopularListViewVer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TvBloc, TvState>(
      buildWhen: ((previous, current) =>
          previous.populatTvState != current.populatTvState),
      builder: (context, state) {
        switch (state.populatTvState) {
          case RequestState.loading:
          //return ShimmerLoadingvertical();
          case RequestState.loaded:
            return SingleChildScrollView(
              child: Column(
                children: [
                  const appBar(
                    title: 'Popular Tvs',
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.populatTv.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      final tvv = state.populatTv[index];

                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: PopularListItemVer(tv: tvv),
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
