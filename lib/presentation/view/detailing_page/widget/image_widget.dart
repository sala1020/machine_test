import 'package:flutter/material.dart';
import 'package:machine_test/data/model/article_model.dart';
import 'package:machine_test/presentation/utils/colors/colors.dart';
import 'package:machine_test/presentation/view/favourites/bloc/favourite_bloc.dart';

class ImageWidget extends StatelessWidget {
  final NewsArticle data;
  const ImageWidget({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'tag-1',
      child: SizedBox(
        height: 201.58,
        width: 361,
        child: Stack(
          children: [
            SizedBox(
              height: 201.58,
              width: 361,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Image.network(
                  data.urlToImage ??
                      'https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            favouriteArticle.contains(data)
                ? const Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.favorite,
                        color: kIconColor,
                        size: 33,
                      ),
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
