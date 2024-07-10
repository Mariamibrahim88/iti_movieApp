import 'package:movie_iti/movie/domain/entities/genre_entity.dart';

class GenresModel extends Genres {
  const GenresModel({required super.name, required super.id});

  factory GenresModel.fromjson(Map<String, dynamic> json) =>
      GenresModel(name: json["name"], id: json["id"]);
}
