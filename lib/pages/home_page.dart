import "package:flutter/material.dart";
import 'package:pages_test/widgets/movies_list.dart';

class MyHomePage extends StatefulWidget {
  static const String routeName = "/";

  final String title = "Movies";

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.widget.title),
        centerTitle: true,
      ),
      body: MoviesListWidget(),
    );
  }
}
