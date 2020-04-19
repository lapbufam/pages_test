import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pages_test/models/Movie.dart';
import 'package:pages_test/models/MovieList.dart';
import 'package:pages_test/pages/details_page.dart';

class MoviesListWidget extends StatelessWidget {
  final MovieList movieList;

  MoviesListWidget({this.movieList});

  String beautifySubtitle(String subtitle) {
    return subtitle.replaceAll("|", ", ");
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => ListView.separated(
        itemBuilder: (_, index) {
          Movie movie = movieList.movies[index];

          return ListTile(
            onTap: () {
              // Navigator.pushNamed(
              //   context,
              //   DetailsPage.routeName,
              //   arguments: movie,
              // );
              movie.toggleFavorite();
            },
            title: Text(movie.name),
            subtitle: Text(beautifySubtitle(movie.genre)),
            trailing: Observer(
              builder: (_) => IconButton(
                onPressed: () => movie.toggleFavorite,
                icon: Icon(Icons.favorite),
                color: movie.isFavourite
                    ? Theme.of(context).primaryColor
                    : Colors.grey,
              ),
            ),
          );
        },
        separatorBuilder: (_, index) => Divider(
          color: Colors.grey,
        ),
        itemCount: movieList.movies.length,
      ),
    );
  }
}
