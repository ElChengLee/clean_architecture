import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../common/constants.dart';
import '../dto/article_response.dart';

part 'article_service.g.dart';

@RestApi()
abstract class ArticleService {
  factory ArticleService(Dio dio, {String baseUrl}) = _ArticleService;

  @GET(
      "mostpopular/v2/mostviewed/all-sections/7.json?api-key=${Constants.API_KEY}")
  Future<ArticleResponse<List<Article>>> getArticles();
}
