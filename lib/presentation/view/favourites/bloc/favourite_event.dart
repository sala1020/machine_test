part of 'favourite_bloc.dart';

@immutable
sealed class FavouriteEvent {}



final class FetchFavouriteEvent extends FavouriteEvent{}

final class AddFavouriteEvent extends FavouriteEvent{
final NewsArticle data;
final BuildContext context;

  AddFavouriteEvent(this.context, {required this.data});

}


final class RemoveFavouriteEvent extends FavouriteEvent{
  final NewsArticle data;
final BuildContext context;
  RemoveFavouriteEvent(this.context, {required this.data});

}