import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pages_test/models/Movie.dart';
import 'package:pages_test/pages/details_page.dart';

class MovieTile extends StatelessWidget {
  String beautifySubtitle(String subtitle) {
    return subtitle.replaceAll("|", ", ");
  }

  const MovieTile({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => ListTile(
        onTap: () {
          Navigator.pushNamed(
            context,
            DetailsPage.routeName,
            arguments: movie,
          );
        },
        title: Text(movie.name),
        subtitle: Text(beautifySubtitle(movie.genre)),
        trailing: IconButton(
          onPressed: movie.toggleFavorite,
          icon: Icon(Icons.favorite),
          color:
              movie.isFavourite ? Theme.of(context).primaryColor : Colors.grey,
        ),
      ),
    );
  }
}
