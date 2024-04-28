import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:machine_test/data/model/article_model.dart';
import 'package:machine_test/presentation/utils/size/width.dart';
import 'package:machine_test/presentation/view/common_widget/data_container.dart';

class LeadingImage extends StatelessWidget {
  final NewsArticle data;

  const LeadingImage({
    super.key, required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          child: SizedBox(
            height: 130,
            width: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                data.urlToImage ??'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbPKJq9vTjalUvpdPFAtfButGK35eDJuNNpItO4ShIVQ&s',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        kWidth20,
         DataWidget(data: data,)
      ],
    );
  }
}
