import 'package:movie_iti/tv/domain/entities/genre_tv_entity.dart';

class GenresTvModel extends GenresTv {
  const GenresTvModel({required super.id});

  factory GenresTvModel.fromjson(Map<String, dynamic> json) =>
      GenresTvModel(id: json["id"]);
}
