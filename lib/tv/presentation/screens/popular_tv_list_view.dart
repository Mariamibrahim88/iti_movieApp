import 'package:flutter/material.dart';
import 'package:movie_iti/tv/presentation/components/popular_tv_list_view_body.dart';

class PopularTvListView extends StatelessWidget {
  const PopularTvListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: PopularTvListViewBody(),
      ),
    );
  }
}
