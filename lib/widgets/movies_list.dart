import 'package:flutter/material.dart';
import 'package:pages_test/models/Movie.dart';
import 'package:pages_test/models/MovieList.dart';
import 'package:provider/provider.dart';

import 'movie_tile.dart';

class MoviesListWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final MovieList movieList = Provider.of<MovieList>(context);

    return ListView.separated(
      itemBuilder: (_, index) {
        Movie movie = movieList.movies[index];

        return MovieTile(movie: movie);
      },
      separatorBuilder: (_, index) => Divider(
        color: Colors.grey,
      ),
      itemCount: movieList.movies.length,
    );
  }
}
