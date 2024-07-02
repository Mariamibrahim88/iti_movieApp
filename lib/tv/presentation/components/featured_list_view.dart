import 'package:flutter/material.dart';
import 'package:movie_iti/tv/presentation/components/featured_list_view_item.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.23,
      child: ListView.builder(
        //itemCount: state.books.length,
        itemCount: 5,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        //itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.0),
            // child: GestureDetector(
            //   onTap: () {
            //     GoRouter.of(context)
            //         .push('/bookDetailsView', extra: state.books[index]);
            //   },
            child: FeaturedListViewItem(),
          );
        },
      ),
    );
  }
}
