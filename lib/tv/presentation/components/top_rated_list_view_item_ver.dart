import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_iti/core/styles/text_style.dart';
import 'package:movie_iti/core/utils/functions/api_constance.dart';
import 'package:movie_iti/core/utils/functions/spacing.dart';
import 'package:movie_iti/tv/domain/entities/tv_entity.dart';
import 'package:movie_iti/tv/presentation/components/shimmer_custom_loading.dart';
// Import the shimmer package

class TopRatedListItemVer extends StatelessWidget {
  const TopRatedListItemVer({Key? key, required this.tv}) : super(key: key);

  final TvEntity tv;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              spreadRadius: 0,
              offset: Offset(5, 5),
            ),
          ],
        ),
        width: double.infinity,
        height: 150.h,
        child: GestureDetector(
          onTap: () {
            //GoRouter.of(context).push('/detailsView', extra: movies);
          },
          child: Card(
            elevation: 15,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: CachedNetworkImage(
                    imageUrl: ApiConstance.imageUrl(tv.backdropPath),
                    height: 140.h,
                    width: 95.w,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => ShimmerLoadingPopularver(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
                //const SizedBox(width: 20),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Text(
                            tv.title,
                            style: TextStyles.textTitle,
                            softWrap: true,
                            maxLines: 1,
                            overflow: TextOverflow.visible,
                          ),
                        ),
                        verticalSpace(10),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.red,
                              ),
                              child: Center(
                                child: Text(
                                  tv.date.substring(0, 4),
                                ),
                              ),
                              height: 23.h,
                              width: 50.w,
                            ),
                            horizontalSpace(15),
                            const Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.yellow,
                            ),
                            horizontalSpace(5),
                            Text(
                              tv.voteAverage.toString().substring(0, 3),
                            )
                          ],
                        ),
                        verticalSpace(12),
                        Flexible(
                          child: Text(
                            tv.overview,
                            style: TextStyles.textOverview,
                            softWrap: true,
                            maxLines: 2,
                            overflow: TextOverflow.visible,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
