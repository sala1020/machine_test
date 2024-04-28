import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:machine_test/data/model/article_model.dart';

part 'favourite_event.dart';
part 'favourite_state.dart';

List<NewsArticle> favouriteArticle = [];

class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  FavouriteBloc() : super(FavouriteInitial()) {
    on<FetchFavouriteEvent>((event, emit) {
      if (favouriteArticle.isNotEmpty) {
        emit(LoadingState());
        emit(FetchFavouriteState());
      }
    });

    on<AddFavouriteEvent>((event, emit) {
      if (favouriteArticle.contains(event.data)) {
        ScaffoldMessenger.of(event.context).showSnackBar(const SnackBar(
            duration: Duration(milliseconds: 400),
            content: Text('Already in the Favourites')));
      } else {
        favouriteArticle.add(event.data);
        ScaffoldMessenger.of(event.context).showSnackBar(const SnackBar(
            duration: Duration(milliseconds: 400),
            content: Text('Added to favourites')));
      }
    });

    on<RemoveFavouriteEvent>((event, emit) {
      favouriteArticle.remove(event.data);
      ScaffoldMessenger.of(event.context).showSnackBar(const SnackBar(
          duration: Duration(milliseconds: 400),
          content: Text('Removed from favourites')));
      emit(LoadingState());
      emit(FetchFavouriteState());
    });
  }
}
