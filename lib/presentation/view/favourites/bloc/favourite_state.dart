part of 'favourite_bloc.dart';

@immutable
sealed class FavouriteState {}

final class FavouriteInitial extends FavouriteState {}

final class LoadingState extends FavouriteState {}

final class FetchFavouriteState extends FavouriteState {}
