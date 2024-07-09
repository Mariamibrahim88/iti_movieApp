import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_iti/core/utils/functions/spacing.dart';
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
      baseColor: Colors.amber!,
      highlightColor: Colors.red!,
      child: Container(
        width: 120,
        height: 100,
        color: Colors.white,
      ),
    );
  }
}

// class ShimmerLoadingvertical extends StatelessWidget {
//   const ShimmerLoadingvertical({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10),
//       child: Container(
//         decoration: const BoxDecoration(
//           boxShadow: [
//             BoxShadow(
//               blurRadius: 20,
//               spreadRadius: 0,
//               offset: Offset(5, 5),
//             ),
//           ],
//         ),
//         width: double.infinity,
//         height: 150.h,
//         child: GestureDetector(
//           onTap: () {
//             //GoRouter.of(context).push('/detailsView', extra: movies);
//           },
//           child: Card(
//             elevation: 15,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15),
//             ),
//             child: Row(
//               children: [
//                 Padding(
//                     padding: const EdgeInsets.all(5),
//                     child: Shimmer.fromColors(
//                       baseColor: Colors.grey[300]!,
//                       highlightColor: Colors.grey[100]!,
//                       child: Container(
//                         height: 140.h,
//                         width: 95.w,
//                         color: Colors.grey,
//                       ),
//                     )),
//                 Expanded(
//                   child: Shimmer.fromColors(
//                     baseColor: Colors.grey[300]!,
//                     highlightColor: Colors.grey[100]!,
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                           vertical: 15, horizontal: 10),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Flexible(
//                             child: Container(
//                               width: double.infinity,
//                               height: 16.h,
//                               color: Colors.grey,
//                             ),
//                           ),
//                           verticalSpace(10),
//                           Row(
//                             children: [
//                               Container(
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(5),
//                                   color: Colors.grey,
//                                 ),
//                                 height: 23.h,
//                                 width: 50.w,
//                               ),
//                               horizontalSpace(15),
//                               const Icon(
//                                 Icons.star,
//                                 size: 20,
//                                 color: Colors.grey,
//                               ),
//                               horizontalSpace(5),
//                               Container(
//                                 width: 30.w,
//                                 height: 16.h,
//                                 color: Colors.grey,
//                               ),
//                             ],
//                           ),
//                           verticalSpace(12),
//                           Flexible(
//                             child: Container(
//                               width: double.infinity,
//                               height: 32.h,
//                               color: Colors.grey,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class ShimmerImagePlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          height: 140,
          width: 95,
          color: Colors.grey,
        ),
      ),
    );
  }
}

class ShimmerTitlePlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: double.infinity,
        height: 16,
        color: Colors.grey,
      ),
    );
  }
}

class ShimmerMetaPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey,
          ),
          height: 23,
          width: 50,
        ),
        const SizedBox(width: 15),
        const Icon(
          Icons.star,
          size: 20,
          color: Colors.grey,
        ),
        const SizedBox(width: 5),
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            width: 30,
            height: 16,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

class ShimmerDescriptionPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: double.infinity,
        height: 32,
        color: Colors.grey,
      ),
    );
  }
}
