import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_iti/core/utils/functions/service_locator.dart';
import 'package:movie_iti/tv/presentation/controller/bloc/tv_bloc.dart';
import 'package:movie_iti/tv/presentation/screens/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServiceLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // routerConfig: AppRouter.router,
      home: const HomeView(),

      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
    );
  }
}
