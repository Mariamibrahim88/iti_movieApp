class Movie {
  final int id;
  final String title;
  final String? backdropPath;
  final List<int> genreIds;
  final String overview;
  final double voteAverage;
  final String releaseDate;

  const Movie(this.id, this.title, this.backdropPath, this.genreIds,
      this.overview, this.voteAverage, this.releaseDate);
}
