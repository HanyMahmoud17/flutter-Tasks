import 'dart:ffi';

class Movie {
  int id;
  bool adult;
  String original_title;
  String original_language;
  String overview;
  double popularity;
  String poster_path;
  String release_date;
  // int vote_average;
  int vote_count;
  String backdrop_path;
  // List<String> images = [];

  Movie({
    required this.id,
    required this.adult,
    required this.original_title,
    required this.original_language,
    required this.overview,
    required this.popularity,
    required this.poster_path,
    this.release_date = "",
    // this.vote_average = 0,
    this.vote_count = 0,
    required this.backdrop_path,
  });
}
