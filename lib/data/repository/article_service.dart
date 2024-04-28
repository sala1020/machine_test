import 'dart:convert';
import 'package:machine_test/data/model/article_model.dart';
import 'package:http/http.dart' as http;
import 'package:machine_test/presentation/utils/api/api_key.dart';

class ApiService {
  Future<List<NewsArticle>> getAllArticle() async {
    try {
      const url =
          'https://newsapi.org/v2/everything?q=tesla&from=2024-03-28&sortBy=publishedAt&apiKey=${ApiKey.apiKey}';

      final response =
          await http.get(Uri.parse(url), headers: {"x-api-key": ApiKey.apiKey});
      if (response.statusCode == 200) {
        List<dynamic> responseBody = jsonDecode(response.body)['articles'];

        final List<NewsArticle> articles =
            responseBody.map((e) => NewsArticle.fromJson(e)).toList();
        return articles;
      } else {
        throw Exception(Exception);
      }
    } catch (e) {
      throw Exception();
    }
  }
}
