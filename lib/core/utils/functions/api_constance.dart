class ApiConstance {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String apiKey = "1eef39c0162f3a9845a043fc105ed1ff";

  static const String onTheAirTvPath = "$baseUrl/tv/on_the_air?api_key=$apiKey";
  static const String popularTvPath = "$baseUrl/tv/popular?api_key=$apiKey";
  static const String topRatedTvPath = "$baseUrl/tv/top_rated?api_key=$apiKey";

  static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500';

  static String imageUrl(String path) => '$baseImageUrl$path';

  static const String nowPlayingMoviesPath =
      "$baseUrl/movie/now_playing?api_key=$apiKey";
  static const String popularMoviesPath =
      "$baseUrl/movie/popular?api_key=$apiKey";
  static const String topRatedMoviesPath =
      "$baseUrl/movie/top_rated?api_key=$apiKey";

  static String movieDetailsPath(int movieId) =>
      "$baseUrl/movie/$movieId?api_key=$apiKey";
  static String recommendatiobnPath(int movieId) =>
      "$baseUrl/movie/$movieId/recommendations?api_key=$apiKey";

  static String TvDetailsPath(int tvId) => "$baseUrl/tv/$tvId?api_key=$apiKey";

  static String recommendatiobnTvPath(int tvId) =>
      "$baseUrl/tv/$tvId/recommendations?api_key=$apiKey";

  //https://api.themoviedb.org/3/tv/{series_id}/recommendations

  //https://api.themoviedb.org/3/movie/550?api_key=1eef39c0162f3a9845a043fc105ed1ff
  //https://api.themoviedb.org/3/tv/on_the_air?api_key=1eef39c0162f3a9845a043fc105ed1ff

  // https://api.themoviedb.org/3/tv/228068?api_key=1eef39c0162f3a9845a043fc105ed1ff
}


// https://api.themoviedb.org/3/review/{review_id}

// https://api.themoviedb.org/3/tv/{series_id}