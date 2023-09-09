import 'package:app/models/movieModel.dart';
import 'package:dio/dio.dart';

class MovieApIHelper {
  // i make an object of server to take with server
  var api = Dio();

  Future<List<Movie>> getAll() async {
    List<Movie> movieList = [];
    var response = await api.get(
        "https://api.themoviedb.org/3/movie/popular?api_key=5393fa4aa8dc29c23760ef215f3de4df");
    var data = response.data["results"] as List;
    // print(response.data["results"]);

    movieList = data
        .map((e) => Movie(
              id: e["id"],
              adult: e["adult"],
              original_title: e["original_title"],
              original_language: e["original_language"],
              overview: e["overview"],
              popularity: e["popularity"],
              poster_path: e["poster_path"],
              release_date: e["release_date"],
              // vote_average: e["vote_average"] ?? 0,
              vote_count: e["vote_count"] ?? 0,
              backdrop_path: e["backdrop_path"],
            ))
        .toList();
    return movieList;
  }
}
