// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Movie.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Movie on _Movie, Store {
  final _$isFavouriteAtom = Atom(name: '_Movie.isFavourite');

  @override
  bool get isFavourite {
    _$isFavouriteAtom.context.enforceReadPolicy(_$isFavouriteAtom);
    _$isFavouriteAtom.reportObserved();
    return super.isFavourite;
  }

  @override
  set isFavourite(bool value) {
    _$isFavouriteAtom.context.conditionallyRunInAction(() {
      super.isFavourite = value;
      _$isFavouriteAtom.reportChanged();
    }, _$isFavouriteAtom, name: '${_$isFavouriteAtom.name}_set');
  }

  final _$_MovieActionController = ActionController(name: '_Movie');

  @override
  void toggleFavorite() {
    final _$actionInfo = _$_MovieActionController.startAction();
    try {
      return super.toggleFavorite();
    } finally {
      _$_MovieActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'isFavourite: ${isFavourite.toString()}';
    return '{$string}';
  }
}
