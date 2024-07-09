import 'package:dartz/dartz.dart';
import 'package:movie_iti/core/error/failures.dart';
import 'package:movie_iti/movie/domain/entities/movie_entity.dart';
import 'package:movie_iti/movie/domain/repositories/base_movie_repository.dart';

class GetPopularMoviesUasecase {
  final BaseMoviesRepository baseMoviesRepository;
  GetPopularMoviesUasecase(this.baseMoviesRepository);
  Future<Either<Failure, List<Movie>>> execute() async {
    return await baseMoviesRepository.getPopularMovies();
  }
}
