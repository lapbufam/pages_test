import 'package:flutter/material.dart';
import 'package:pages_test/models/Movie.dart';

class DetailsPage extends StatelessWidget {
  static const String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final Movie movieData = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(movieData.name),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: movieData.isFavourite
                ? Icon(
                    Icons.favorite,
                    color: Colors.white,
                  )
                : Icon(Icons.favorite_border),
          )
        ],
      ),
      body: Center(
        child: Text(movieData.genre),
      ),
    );
  }
}
