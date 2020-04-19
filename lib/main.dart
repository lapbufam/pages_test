import 'package:flutter/material.dart';
import 'package:pages_test/data.dart';
import 'package:pages_test/models/MovieList.dart';
import 'package:pages_test/pages/home_page.dart';
import 'package:pages_test/pages/details_page.dart';

void main() => runApp(MyApp());

// This widget is the root of your application.
class MyApp extends StatelessWidget {
  final MovieList movies = dummyMovies;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: "/",
      routes: {
        MyHomePage.routeName: (context) =>
            MyHomePage(title: "Movies", movieList: dummyMovies),
        DetailsPage.routeName: (context) => DetailsPage(),
      },
    );
  }
}
