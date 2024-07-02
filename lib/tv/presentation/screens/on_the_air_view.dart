import 'package:flutter/material.dart';
import 'package:movie_iti/tv/presentation/components/on_the_air_view_body.dart';

class OnTheAirView extends StatelessWidget {
  const OnTheAirView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: OnTheAirViewBody(),
      ),
    );
  }
}
