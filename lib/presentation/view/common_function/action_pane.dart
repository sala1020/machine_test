import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:machine_test/data/model/article_model.dart';
import 'package:machine_test/presentation/utils/colors/colors.dart';
import 'package:machine_test/presentation/view/favourites/bloc/favourite_bloc.dart';

ActionPane actionPaneData(
    {required bool isFavourite,
    required NewsArticle data,
    required BuildContext context}) {
      
  return ActionPane(
    extentRatio: 0.27,
    motion: const DrawerMotion(),
    children: [
      !isFavourite
          ? SlidableAction(
              label: '  Add to\nfavourite',
              backgroundColor: const Color(0xffFCD1D1),
              icon: Icons.favorite,
              foregroundColor: kIconColor,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(11.61),
                  bottomRight: Radius.circular(11.61)),
              onPressed: (context) {
                context
                    .read<FavouriteBloc>()
                    .add(AddFavouriteEvent(data: data, context));
              },
            )
          : SlidableAction(
              label: 'Remove',
              backgroundColor: const Color(0xffFCD1D1),
              icon: Icons.favorite,
              foregroundColor: kIconColor,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(11.61),
                  bottomRight: Radius.circular(11.61)),
              onPressed: (context) {
                context
                    .read<FavouriteBloc>()
                    .add(RemoveFavouriteEvent(data: data, context));
              },
            )
    ],
  );
}
