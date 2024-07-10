import 'package:dartz/dartz.dart';
import 'package:movie_iti/movie/domain/entities/movie_datails_entity.dart';
import 'package:movie_iti/movie/domain/entities/movie_entity.dart';
import 'package:movie_iti/movie/domain/entities/recommendation_entity.dart';
import 'package:movie_iti/movie/domain/use_cases/get_movie_details_use_case.dart';
import 'package:movie_iti/movie/domain/use_cases/get_recommended_use_case.dart';

import '../../../core/error/failures.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();
  Future<Either<Failure, List<Movie>>> getPopularMovies();
  Future<Either<Failure, List<Movie>>> getTopRatedMovies();
  Future<Either<Failure, MovieDetail>> getMovieDetails(
      MovieDetailsParameters parameters);
  Future<Either<Failure, List<Recommendation>>> getRecommendation(
      RecommendationParameters parameters);
}
