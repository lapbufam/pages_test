import 'package:flutter/material.dart';
import 'package:pages_test/data.dart';
import 'package:pages_test/pages/home_page.dart';
import 'package:pages_test/pages/details_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

// This widget is the root of your application.
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => dummyMovies),
      ],
      child: MaterialApp(
        title: 'Movies App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        initialRoute: "/",
        routes: {
          MyHomePage.routeName: (context) {
            return MyHomePage();
          },
          DetailsPage.routeName: (context) {
            return DetailsPage();
          },
        },
      ),
    );
  }
}
