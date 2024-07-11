class TvEntity {
  final String? backdropPath;
  final int id;
  final String title;
  final String overview;
  final List<int>? genreIds;
  final double voteAverage;
  final String date;

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
