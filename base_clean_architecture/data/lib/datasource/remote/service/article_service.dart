import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../common/constants.dart';
import '../dto/article_response.dart';

part 'article_service.g.dart';

@RestApi()
abstract class ArticleService {
  factory ArticleService(Dio dio) = _ArticleService;

  @POST('/global/vn/smartkid/authenticate' + Constants.version)
  Future<ArticleResponse<List<Article>>> getArticles();
}
