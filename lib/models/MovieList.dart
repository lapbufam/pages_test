import 'package:mobx/mobx.dart';
import 'Movie.dart';

part 'MovieList.g.dart';

class MovieList = _MovieList with _$MovieList;

abstract class _MovieList with Store {
  @observable
  List<Movie> movies;

  _MovieList({this.movies});
}
