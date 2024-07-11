import 'package:equatable/equatable.dart';

class GenresTv extends Equatable {
  final int id;
  const GenresTv({required this.id});

  @override
  List<Object?> get props => [id];
}
