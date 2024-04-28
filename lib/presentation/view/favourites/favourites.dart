import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_test/presentation/view/common_widget/main_tile.dart';
import 'package:machine_test/presentation/view/favourites/bloc/favourite_bloc.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<FavouriteBloc>().add(FetchFavouriteEvent());
    return Scaffold(
      body: BlocBuilder<FavouriteBloc, FavouriteState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is FetchFavouriteState) {
            return favouriteArticle.isNotEmpty
                ? ListView.builder(
                    itemCount: favouriteArticle.length,
                    itemBuilder: (context, index) {
                      final data = favouriteArticle[index];
                      return DataBox(
                        data: data,
                        isFavourite: true,
                      );
                    },
                  )
                : const Center(
                    child: Text('No favourites'),
                  );
          }
          return const Center(child: Text('Empty'));
        },
      ),
    );
  }
}
