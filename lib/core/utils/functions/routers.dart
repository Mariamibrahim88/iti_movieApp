import 'package:go_router/go_router.dart';
import 'package:movie_iti/movie/presentation/screens/movie_datails_screen.dart';
import 'package:movie_iti/movie/presentation/screens/popular_movie_view.dart';
import 'package:movie_iti/tv/presentation/screens/nav_buttom.dart';
import 'package:movie_iti/tv/presentation/screens/popular_tv_list_view.dart';
import 'package:movie_iti/tv/presentation/screens/top_rated_tv_list_view.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => Nav()),
    GoRoute(
      path: '/PopularTvListView',
      builder: (context, state) => const PopularTvListView(),
    ),
    GoRoute(
      path: '/topRatedTvListView',
      builder: (context, state) => const TopRatedTvListView(),
    ),
    GoRoute(
      path: '/popularMoviesListView',
      builder: (context, state) => const PopularMovieListView(),
    ),
    GoRoute(
      path: '/topRatedMoviesListView',
      builder: (context, state) => const TopRatedTvListView(),
    ),
    // GoRoute(
    //   path: '/bookDetailsView',
    //   builder: (context, state) => const MovieDetailScreen(id: ,),
    // ),

    //  const DetailsView(
    //   //bookModel: state.extra as BookModel,
    //   movies: state.extra as MovieModel,
    // ),
  ]);
}
