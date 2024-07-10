import 'package:equatable/equatable.dart';

class GenresTv extends Equatable {
  final dynamic name;
  final dynamic id;
  const GenresTv({required this.name, required this.id});

  @override
  List<Object?> get props => [name, id];
}
