// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ArticleService implements ArticleService {
  _ArticleService(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ArticleResponse<List<Article>>> getArticles() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<
        ArticleResponse<List<Article>>>(Options(
            method: 'GET', headers: _headers, extra: _extra)
        .compose(_dio.options,
            'mostpopular/v2/mostviewed/all-sections/7.json?api-key=qtVlLSfH968rf6nd2tqbLPDnHnA7NLEb',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ArticleResponse<List<Article>>.fromJson(
        _result.data!,
        (json) => (json as List<dynamic>)
            .map<Article>((i) => Article.fromJson(i as Map<String, dynamic>))
            .toList());
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
