import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_iti/core/styles/text_style.dart';
import 'package:movie_iti/core/utils/functions/api_constance.dart';
import 'package:movie_iti/core/utils/functions/spacing.dart';
import 'package:movie_iti/movie/presentation/controller/bloc/movies_bloc.dart';
import 'package:movie_iti/movie/presentation/controller/bloc/movies_state.dart';
import 'package:movie_iti/movie/presentation/screens/movie_datails_screen.dart';
import 'package:movie_iti/tv/presentation/components/shimmer_custom_loading.dart';

import '../../../core/utils/functions/enums.dart';

class CustomNowPlayingSection extends StatelessWidget {
  const CustomNowPlayingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      buildWhen: ((previous, current) =>
          previous.nowPlayingState != current.nowPlayingState),
      builder: (context, state) {
        switch (state.nowPlayingState) {
          case RequestState.loading:
          // return const ShimmerLoadingOnAir();
          case RequestState.loaded:
            return FadeIn(
              duration: const Duration(milliseconds: 500),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 400.0,
                  viewportFraction: 1.0,
                  onPageChanged: (index, reason) {},
                ),
                items: state.nowPlayingMovies.map((i) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  MovieDetailScreen(id: i.id)));
                    },
                    child: Stack(
                      children: [
                        ClipRRect(
                          child: CachedNetworkImage(
                            imageUrl:
                                ApiConstance.imageUrl(i.backdropPath ?? ""),
                            placeholder: (context, url) =>
                                const ShimmerLoadingOnAir(), // Use the shimmer loading widget as a placeholder
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 400,
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          height: 50,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.black.withOpacity(0.9),
                                  Colors.transparent,
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          height: 100,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.9),
                                  Colors.transparent,
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          height: 190,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.circle,
                                    size: 16,
                                    color: Colors.red,
                                  ),
                                  Text(
                                    'Now Playing'.toUpperCase(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              verticalSpace(10),
                              Text(
                                i.title,
                                style: TextStyles.TextRowTitle,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            );
          case RequestState.error:
            return SizedBox(
              height: 400.0,
              child: Center(
                child: Text(state.nowPlayingMessage),
              ),
            );
          default:
            return Container(); // Return a default container if the state is not handled
        }
      },
    );
  }
}
