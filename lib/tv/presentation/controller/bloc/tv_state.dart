part of 'tv_bloc.dart';

// @immutable
// sealed class TvState {}

// final class TvInitial extends TvState {}

class TvState extends Equatable {
  final List<TvEntity> onAirtv;
  final RequestState onAirtvState;
  final String onAirtvmessage;
  final List<TvEntity> populatTv;
  final RequestState populatTvState;
  final String populatTvmessage;
  final List<TvEntity> topRatedTv;
  final RequestState topRatedTvState;
  final String topRatedTvmessage;

  const TvState(
      {this.onAirtv = const [],
      this.onAirtvState = RequestState.loading,
      this.onAirtvmessage = '',
      this.populatTv = const [],
      this.populatTvState = RequestState.loading,
      this.populatTvmessage = '',
      this.topRatedTv = const [],
      this.topRatedTvState = RequestState.loading,
      this.topRatedTvmessage = ''});

  TvState copyWith({
    List<TvEntity>? onAirtv,
    RequestState? onAirtvState,
    String? onAirtvmessage,
    List<TvEntity>? populatTv,
    RequestState? populatTvState,
    String? populatTvmessage,
    List<TvEntity>? topRatedTv,
    RequestState? topRatedTvState,
    String? topRatedTvmessage,
  }) {
    return TvState(
      onAirtv: onAirtv ?? this.onAirtv,
      onAirtvState: onAirtvState ?? this.onAirtvState,
      onAirtvmessage: onAirtvmessage ?? this.onAirtvmessage,
      populatTv: populatTv ?? this.populatTv,
      populatTvState: populatTvState ?? this.populatTvState,
      populatTvmessage: populatTvmessage ?? this.populatTvmessage,
      topRatedTv: topRatedTv ?? this.topRatedTv,
      topRatedTvState: topRatedTvState ?? this.topRatedTvState,
      topRatedTvmessage: topRatedTvmessage ?? this.topRatedTvmessage,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        onAirtv,
        onAirtvState,
        onAirtvmessage,
        populatTv,
        populatTvState,
        populatTvmessage,
        topRatedTv,
        topRatedTvState,
        topRatedTvmessage
      ];
}
