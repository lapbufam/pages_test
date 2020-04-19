import "package:flutter/material.dart";
import 'package:pages_test/models/Movie.dart';
import 'package:pages_test/models/MovieList.dart';
import 'package:pages_test/widgets/movies_list.dart';

class MyHomePage extends StatefulWidget {
  static const String routeName = "/";

  MyHomePage({Key key, this.title, this.movieList}) : super(key: key);

  final String title;
  final MovieList movieList;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MovieList movieList;

  @override
  void initState() {
    setState(() {
      this.movieList = this.widget.movieList;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.widget.title),
        centerTitle: true,
      ),
      body: MoviesListWidget(
        movieList: this.movieList,
      ),
    );
  }
}
