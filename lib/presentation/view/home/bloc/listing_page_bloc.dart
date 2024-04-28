import 'package:bloc/bloc.dart';
import 'package:machine_test/data/model/article_model.dart';
import 'package:machine_test/data/repository/article_service.dart';
import 'package:meta/meta.dart';

part 'listing_page_event.dart';
part 'listing_page_state.dart';

class ListingPageBloc extends Bloc<ListingPageEvent, ListingPageState> {
  ListingPageBloc() : super(ListingPageInitial()) {
    on<ListingDataEvent>((event, emit) async {
      emit(LoadingState());

      final List<NewsArticle> articles = await ApiService().getAllArticle();
      if (articles.isNotEmpty) {
        emit(ListingDataState(articles: articles));
      }
    });
  }
}
