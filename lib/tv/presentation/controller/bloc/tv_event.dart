part of 'tv_bloc.dart';

abstract class TvEvent extends Equatable {
  const TvEvent();

  @override
  List<Object> get props => [];
}

class OnAirTvEvent extends TvEvent {}

class GetPopularTvEvent extends TvEvent {}

class GetTopRatedTvEvent extends TvEvent {}
