import 'package:mobx/mobx.dart';

part 'Movie.g.dart';

class Movie = _Movie with _$Movie;

abstract class _Movie with Store {
  String id;
  String name;
  String genre;
  double price;

  @observable
  bool isFavourite;

  _Movie({
    this.id,
    this.name,
    this.genre,
    this.isFavourite = false,
  });

  @action
  void toggleFavorite() {
    this.isFavourite = !(this.isFavourite);
  }
}
