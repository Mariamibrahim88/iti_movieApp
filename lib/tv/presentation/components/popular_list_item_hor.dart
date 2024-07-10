import 'package:cached_network_image/cached_network_image.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_iti/core/utils/functions/api_constance.dart';
import 'package:movie_iti/tv/domain/entities/tv_entity.dart';
import 'package:shimmer/shimmer.dart';

import 'shimmer_custom_loading.dart';

class PopularListViewItemhor extends StatelessWidget {
  const PopularListViewItemhor({super.key, required this.tv});

  final TvEntity tv;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: ClipRRect(
          child: ExtendedImage.network(
            ApiConstance.imageUrl(
              tv.backdropPath.toString(),
            ),
            height: 400,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ),
      //child: Image.asset('assets/tv_image.jpg'),
      // child: CachedNetworkImage(
      //   imageUrl: ApiConstance.imageUrl(tv.backdropPath.toString()),
      //   placeholder: (context, url) => const ShimmerLoadingPopularhor(),
      //   fit: BoxFit.fill,
      //   errorWidget: (context, url, error) => const Icon(Icons.error),
      // )
    );
  }
}
