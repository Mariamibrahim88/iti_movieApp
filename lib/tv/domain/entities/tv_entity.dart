class TvEntity {
  final String backdropPath;
  final String title;
  final String overview;
  final List<int> genreIds;
  final double voteAverage;
  final String date;

  TvEntity(this.backdropPath, this.overview, this.voteAverage, this.title,
      this.date, this.genreIds);
}
