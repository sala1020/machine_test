part of 'listing_page_bloc.dart';

@immutable
sealed class ListingPageState {}

final class ListingPageInitial extends ListingPageState {}

final class ListingDataState extends ListingPageState {
  final List<NewsArticle> articles;
  ListingDataState({required this.articles});
}

final class LoadingState extends ListingPageState {}
