import 'package:dio/dio.dart';
import 'package:flutter_counter/data/models/news_response.dart';
import 'package:retrofit/retrofit.dart';

part 'cook_client.g.dart';

@RestApi()
abstract class CookClient {
  factory CookClient(Dio dio, {String baseUrl}) = _CookClient;

  //https://newsapi.org/v2/everything?q=bitcoin&apiKey=812670196e534fa485f9743e679ab776&language=fr
  @GET("v2/everything")
  Future<News_response> getNews(
    @Query("apiKey") String apiKey,
    @Query("q") String search,
    @Query("language") String countryCode,
  );

  //https://newsapi.org/v2/top-headlines?country=fr&apiKey=812670196e534fa485f9743e679ab776
  @GET("v2/top-headlines")
  Future<News_response> getLatestNews(
    @Query("apiKey") String apiKey,
    @Query("country") String countryCode,
  );
}
