import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_iti/core/utils/functions/enums.dart';
import 'package:movie_iti/tv/presentation/components/popular_list_item_hor.dart';
import 'package:movie_iti/tv/presentation/components/shimmer_custom_loading.dart';
import 'package:movie_iti/tv/presentation/controller/bloc/tv_bloc.dart';

class PopularListViewhor extends StatelessWidget {
  const PopularListViewhor({
    super.key,
  });
  //final TvEntity tv;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TvBloc, TvState>(
      buildWhen: ((previous, current) =>
          previous.populatTvState != current.populatTvState),
      builder: (context, state) {
        switch (state.populatTvState) {
          case RequestState.loading:
          // return const ShimmerLoadingPopularhor(); // Show the shimmer loading widget
          case RequestState.loaded:
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.23,
              child: ListView.builder(
                // itemCount: tv.
                itemCount: state.populatTv.length,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                //itemCount: 10,
                itemBuilder: (context, index) {
                  final tvv = state.populatTv[index];

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7.0),
                    // child: GestureDetector(
                    //   onTap: () {
                    //     GoRouter.of(context)
                    //         .push('/bookDetailsView', extra: state.books[index]);
                    //   },
                    child: TopRatedListViewItemhor(tv: tvv),
                  );
                },
              ),
            );
          case RequestState.error:
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.23,
              child: Center(
                child: Text(state.onAirtvmessage),
              ),
            );
        }
      },
    );
  }
}
