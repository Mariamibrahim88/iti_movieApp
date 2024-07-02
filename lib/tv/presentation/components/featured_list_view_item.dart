import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Image.asset('assets/tv_image.jpg'),
        // child:
        //  CachedNetworkImage(
        //   imageUrl: imageurl,
        //   placeholder: (context, url) => const Center(
        //     child: Center(child: CircularProgressIndicator()),
        //   ),
        //   fit: BoxFit.fill,
        //   errorWidget: (context, url, error) => const Icon(Icons.error),
        // )),
      ),
    );
  }
}
