import 'package:dartz/dartz.dart';
import 'package:movie_iti/movie/domain/entities/movie_entity.dart';

import '../../../core/error/failures.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();
  Future<Either<Failure, List<Movie>>> getPopularMovies();
  Future<Either<Failure, List<Movie>>> getTopRatedMovies();
  // Future<Either<Failure, MovieDetail>> getMovieDetails(
  //     MovieDetailsParameters parameters);
  // Future<Either<Failure, List<Recommendation>>> getRecommendation(
  //     RecommendationParameters parameters);
}
