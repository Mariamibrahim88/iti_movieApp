import 'package:flutter/material.dart';
import 'package:movie_iti/core/utils/functions/spacing.dart';
import 'package:movie_iti/tv/presentation/components/custom_on_the_air_section.dart';
import 'package:movie_iti/tv/presentation/components/custom_row.dart';
import 'package:movie_iti/tv/presentation/components/featured_list_view.dart';
import 'package:movie_iti/tv/presentation/components/featured_list_view_item.dart';

class OnTheAirViewBody extends StatelessWidget {
  const OnTheAirViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomOnTheAirSection(),
          verticalSpace(10),
          CustomRow(
              title: "Popular",
              text: "see More",
              icon: Icons.arrow_forward_ios),
          verticalSpace(4),
          const FeaturedListView(),
          verticalSpace(14),
          CustomRow(
              title: "Top Rated",
              text: "see More",
              icon: Icons.arrow_forward_ios),
          verticalSpace(4),
          const FeaturedListView(),
        ],
      ),
    );
  }
}
