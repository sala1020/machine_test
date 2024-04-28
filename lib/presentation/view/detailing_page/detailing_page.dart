import 'package:flutter/material.dart';
import 'package:machine_test/data/model/article_model.dart';
import 'package:machine_test/presentation/utils/colors/colors.dart';
import 'package:machine_test/presentation/utils/size/height.dart';
import 'package:machine_test/presentation/view/common_widget/text_widget.dart';
import 'package:machine_test/presentation/view/detailing_page/widget/image_widget.dart';

class DeatailingPage extends StatelessWidget {
  final NewsArticle data;
  final List<NewsArticle> articles;
  const DeatailingPage({super.key, required this.data, required this.articles});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Row(
            children: [
              Icon(Icons.arrow_back_ios_new, size: 24),
              Text(
                'Back',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ImageWidget(data: data),
            kHeight10,
            TextWidget(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              text: data.title!,
              textColor: kBlack,
            ),
            kHeight3,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.calendar_month,
                  size: 18,
                  color: Color(0xffB9B9B9),
                ),
                TextWidget(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  text: data.publishedAt.toString(),
                  textColor: const Color(0xffB9B9B9),
                ),
              ],
            ),
            kHeight10,
            TextWidget(
                textColor: kBlack,
                text: data.content!,
                fontWeight: FontWeight.w400,
                fontSize: 20)
          ],
        ),
      ),
    );
  }
}
