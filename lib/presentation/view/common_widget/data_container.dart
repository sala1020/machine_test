import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machine_test/data/model/article_model.dart';
import 'package:machine_test/presentation/utils/size/height.dart';

class DataWidget extends StatelessWidget {
  final NewsArticle data;
  const DataWidget({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints.loose(const Size(200, 40)),
          child: Text(
            data.title ?? 'no data',
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w700,
              fontSize: 15.48,
            ),
          ),
        ),
        kHeight3,
        ConstrainedBox(
                    constraints: BoxConstraints.loose(const Size(200, 40)),

          child: Text(
            data.content??"no data",
            style:
                GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 15.48),
          ),
        ),
        kHeight3,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.calendar_month,
              size: 16,
              color: Color(0xffB9B9B9),
            ),
            Text(
              data.publishedAt.toString(),
              style: GoogleFonts.roboto(
                  color: const Color(0xffB9B9B9),
                  fontWeight: FontWeight.w700,
                  fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
