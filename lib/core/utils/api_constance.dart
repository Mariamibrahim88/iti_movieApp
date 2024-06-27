class ApiConstance {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String apiKey = "1eef39c0162f3a9845a043fc105ed1ff";

  static const String onTheAirTvPath = "$baseUrl/tv/on_the_air?api_key=$apiKey";
  static const String popularTvPath = "$baseUrl/tv/popular?api_key=$apiKey";
  static const String topRatedTvPath = "$baseUrl/tv/top_rated?api_key=$apiKey";
}
