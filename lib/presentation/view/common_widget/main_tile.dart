// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:machine_test/data/model/article_model.dart';
import 'package:machine_test/presentation/view/common_function/action_pane.dart';
import 'package:machine_test/presentation/view/common_widget/image_container.dart';
import 'package:machine_test/presentation/view/detailing_page/detailing_page.dart';
import 'package:machine_test/presentation/view/favourites/bloc/favourite_bloc.dart';

class DataBox extends StatelessWidget {
  final NewsArticle data;
  final bool isFavourite;
  const DataBox({super.key, required this.data, required this.isFavourite});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 17.42,
        left: 12.58,
        top: 17.42,
        right: 12.58,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>  DeatailingPage(data: data,articles: favouriteArticle,),
              ));
        },
        child: Container(
          height: 140,
          width: 377.77,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(11.61)),
            boxShadow: [
              BoxShadow(
                color: Color(0xff18274b24),
                spreadRadius: -3.87,
                offset: Offset(0, 17.42),
                blurRadius: 85.15,
              ),
              BoxShadow(
                color: Color(0xff18274b24),
                spreadRadius: -5.81,
                offset: Offset(0, 7.74),
                blurRadius: 27.15,
              ),
            ],
          ),
          child: Slidable(
            endActionPane: actionPaneData(
                isFavourite: isFavourite, data: data, context: context),
            child: Center(
              child: SizedBox(
                height: 116.51,
                width: 342.93,
                child: LeadingImage(
                  data: data,
             
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
