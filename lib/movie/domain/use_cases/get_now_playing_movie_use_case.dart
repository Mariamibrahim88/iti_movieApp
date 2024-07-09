import 'package:dartz/dartz.dart';
import 'package:movie_iti/movie/domain/entities/movie_entity.dart';
import 'package:movie_iti/movie/domain/repositories/base_movie_repository.dart';

import '../../../core/error/failures.dart';

class GetNowPlayingMoviesUsecase {
  final BaseMoviesRepository baseMoviesRepository;
  @override
  GetNowPlayingMoviesUsecase(this.baseMoviesRepository);
  Future<Either<Failure, List<Movie>>> execute() async {
    return await baseMoviesRepository.getNowPlayingMovies();
  }
}
