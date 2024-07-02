part of 'tv_bloc.dart';

// @immutable
// sealed class TvState {}

// final class TvInitial extends TvState {}

class TvState extends Equatable {
  final List<TvEntity> onAirtv;
  final RequestState onAirtvState;
  final String onAirtvmessage;

  const TvState(
      {this.onAirtv = const [],
      this.onAirtvState = RequestState.loading,
      this.onAirtvmessage = ''});

  @override
  // TODO: implement props
  List<Object?> get props => [onAirtv, onAirtvState, onAirtvmessage];
}
