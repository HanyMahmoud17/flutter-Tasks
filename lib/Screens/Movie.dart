import 'package:flutter/material.dart';
import 'package:app/Logic/movieApi.dart';
import 'package:app/models/movieModel.dart';

class MovieListScreen extends StatefulWidget {
  const MovieListScreen({Key? key}) : super(key: key);

  @override
  State<MovieListScreen> createState() => _MovieListScreenState();
}

class _MovieListScreenState extends State<MovieListScreen> {
  var api = MovieApIHelper();
  List<Movie> returnedList = [];

  @override
  initState() {
    super.initState();
    getData();
  }

  getData() async {
    var x = await api.getAll();
    setState(() {
      returnedList = x;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          childAspectRatio: 2 / 2,
          crossAxisSpacing: 20,
        ),
        children: returnedList.map((movie) => MovieItem(movie: movie)).toList(),
      ),
    );
  }
}

class MovieItem extends StatelessWidget {
  const MovieItem({required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: InkWell(
        splashColor: Color.fromARGB(104, 220, 214, 214),
        onTap: () {
          print(movie.id);
        },
        borderRadius: BorderRadius.circular(20),
        child: ClipRRect(
          child: Image.network(
            'https://image.tmdb.org/t/p/w500${movie.poster_path}',
            fit: BoxFit.cover,
          ),
        ),
      ),
      footer: GridTileBar(
        backgroundColor: Color.fromARGB(104, 220, 214, 214),
        title: Text(movie.original_title),
        trailing: Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        leading: Icon(
          Icons.favorite,
          color: Colors.red,
        ),
      ),
    );
  }
}
