import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoadingOnAir extends StatelessWidget {
  const ShimmerLoadingOnAir();

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: const Color.fromARGB(106, 224, 224, 224)!,
      highlightColor: const Color.fromARGB(48, 245, 245, 245)!,
      child: Container(
        color: Colors.grey,
        width: double.infinity,
        height: 400,
      ),
    );
  }
}

class ShimmerLoadingPopularhor extends StatelessWidget {
  const ShimmerLoadingPopularhor();

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[850]!,
      highlightColor: Colors.grey[800]!,
      child: Container(
        height: 170.0,
        width: 120.0,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}

class ShimmerLoadingPopularver extends StatelessWidget {
  const ShimmerLoadingPopularver({
    Key? key,
    //  this.width,
    // this.height,
  }) : super(key: key);

  // final double width;
  // final double height;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[850]!,
      highlightColor: Colors.grey[800]!,
      child: Container(
        width: 120,
        height: 100,
        color: Colors.white,
      ),
    );
  }
}
