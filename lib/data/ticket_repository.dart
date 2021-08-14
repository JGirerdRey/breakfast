import 'package:dio/dio.dart';
import 'package:flutter_counter/data/models/news_response.dart';

import 'api/cook_client.dart';

class SpoonRepository {
  final apiKey = '812670196e534fa485f9743e679ab776';
  final locale = 'fr';
  final countryCode = 'FR';
  final client = CookClient(Dio(BaseOptions(
      contentType: "application/json", baseUrl: "https://newsapi.org/")));

  Future<News_response> getRecipeDetail(String search) async {
    return client.getNews(apiKey, search, "fr");
  }

  Future<News_response> getLatestNews() async {
    return client.getLatestNews(apiKey, "fr");
  }
}
