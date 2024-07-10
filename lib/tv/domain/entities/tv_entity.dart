class TvEntity {
  final dynamic backdropPath;
  final dynamic id;
  final dynamic title;
  final dynamic overview;
  final List<dynamic>? genreIds;
  final dynamic voteAverage;
  final dynamic date;

  TvEntity(
    this.id,
    this.backdropPath,
    this.overview,
    this.voteAverage,
    this.title,
    this.date,
    this.genreIds, //this.id
  );
}
