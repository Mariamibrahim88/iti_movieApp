import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_iti/core/error/failures.dart';
import 'package:movie_iti/core/utils/use_case/base_use_case.dart';
import 'package:movie_iti/movie/domain/entities/movie_datails_entity.dart';
import 'package:movie_iti/movie/domain/repositories/base_movie_repository.dart';

class GetMovieDetailsUsecase
    extends BaseUsecase<MovieDetail, MovieDetailsParameters> {
  final BaseMoviesRepository baseMoviesRepository;
  GetMovieDetailsUsecase(this.baseMoviesRepository);
  @override
  Future<Either<Failure, MovieDetail>> call(
      MovieDetailsParameters parameters) async {
    return await baseMoviesRepository.getMovieDetails(parameters);
  }
}

class MovieDetailsParameters extends Equatable {
  final int movieId;
  const MovieDetailsParameters({required this.movieId});

  @override
  // TODO: implement props
  List<Object?> get props => [movieId];
}
