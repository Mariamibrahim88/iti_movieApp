import 'package:go_router/go_router.dart';
import 'package:movie_iti/tv/presentation/screens/home_view.dart';
import 'package:movie_iti/tv/presentation/screens/popular_tv_list_view.dart';
import 'package:movie_iti/tv/presentation/screens/top_rated_tv_list_view.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeView()),
    GoRoute(
      path: '/PopularTvListView',
      builder: (context, state) => const PopularTvListView(),
    ),
    GoRoute(
      path: '/topRatedTvListView',
      builder: (context, state) => const TopRatedTvListView(),
    ),

    //  const DetailsView(
    //   //bookModel: state.extra as BookModel,
    //   movies: state.extra as MovieModel,
    // ),
  ]);
}
