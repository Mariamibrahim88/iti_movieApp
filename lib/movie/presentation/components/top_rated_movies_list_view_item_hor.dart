import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_iti/core/utils/functions/api_constance.dart';
import 'package:movie_iti/movie/domain/entities/movie_entity.dart';
import 'package:movie_iti/tv/presentation/components/shimmer_custom_loading.dart';

class TopRatedMoviesListViewItemHor extends StatelessWidget {
  const TopRatedMoviesListViewItemHor({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: AspectRatio(
          aspectRatio: 2.6 / 4,
          //child: Image.asset('assets/tv_image.jpg'),
          child: CachedNetworkImage(
            imageUrl: ApiConstance.imageUrl(movie.backdropPath ?? ''),
            placeholder: (context, url) => const ShimmerLoadingPopularhor(),
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => const Icon(Icons.error),
          )),
    );
  }
}
