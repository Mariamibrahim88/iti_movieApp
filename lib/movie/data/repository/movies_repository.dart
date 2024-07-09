import 'package:dartz/dartz.dart';
import 'package:movie_iti/core/error/exceptions.dart';
import 'package:movie_iti/core/error/failures.dart';
import 'package:movie_iti/movie/data/data_source/remote_movie_data_source.dart';
import 'package:movie_iti/movie/domain/entities/movie_entity.dart';
import 'package:movie_iti/movie/domain/repositories/base_movie_repository.dart';

class MoviesRepository extends BaseMoviesRepository {
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MoviesRepository({required this.baseMovieRemoteDataSource});

  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() async {
    final result = await baseMovieRemoteDataSource.getNowPlayingMovies();

    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    final result = await baseMovieRemoteDataSource.getPopularMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async {
    final result = await baseMovieRemoteDataSource.getTopRatedMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  // @override
  // Future<Either<Failure, MovieDetail>> getMovieDetails(
  //     MovieDetailsParameters parameters) async {
  //   final result = await baseMovieRemoteDataSource.getMovieDetails(parameters);
  //   try {
  //     return Right(result);
  //   } on ServerException catch (failure) {
  //     return Left(
  //         ServerFailure(message: failure.errorMessageModel.statusMessage));
  //   }
  // }

  // @override
  // Future<Either<Failure, List<Recommendation>>> getRecommendation(
  //     RecommendationParameters parameters) async {
  //   final result =
  //       await baseMovieRemoteDataSource.getRecommendation(parameters);
  //   try {
  //     return Right(result);
  //   } on ServerException catch (failure) {
  //     return Left(
  //         ServerFailure(message: failure.errorMessageModel.statusMessage));
  //   }
  // }
}
