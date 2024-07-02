import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:movie_iti/core/utils/functions/enums.dart';

import '../../../domain/entities/tv_entity.dart';

part 'tv_event.dart';
part 'tv_state.dart';

class TvBloc extends Bloc<TvEvent, TvState> {
  TvBloc() : super(TvInitial()) {
    on<TvEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
