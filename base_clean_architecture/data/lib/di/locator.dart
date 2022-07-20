import 'package:data/datasource/remote/service/mock_data_api.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../common/constants.dart';
import '../datasource/local/dao/article_dao.dart';
import '../datasource/local/db/app_database.dart';
import '../datasource/remote/service/article_service.dart';
import '../datasource/remote/service/login/login_service.dart';
import 'locator.config.dart';

final locator = GetIt.instance..allowReassignment = true;

String token = "";
String langApp = RequestHeaderValue.langVi;

@injectableInit
void setupLocator() {
  _init(locator);
  $initGetIt(locator);
}

void _init(GetIt locator) {
  _registerNetworkModules(locator);
  _registerServices(locator);
  _registerDatabase(locator);
}

void _registerNetworkModules(GetIt locator) {
  Dio dio = Dio();
  dio.options = BaseOptions(
    baseUrl: Constants.baseUrl,
    contentType: NetworkRequestValues.contentType,
    sendTimeout: Constants.timeOut,
    connectTimeout: Constants.timeOut,
    receiveTimeout: Constants.timeOut,
  );
  dio.interceptors.add(addInterceptor());
  dio.interceptors.add(addMockDataInterceptor(dio));
  locator.registerSingleton<Dio>(dio);
}

/// Mock data with path Url
InterceptorsWrapper addMockDataInterceptor(Dio dio) {
  final _logger = Logger();
  return InterceptorsWrapper(onRequest: (_option, _handler) {
    _logger.d("---------------: ${_option.path}");
    DioAdapter dioAdapter = DioAdapter(dio: dio);
    dioAdapter.onPost(
      _option.path,
      (request) => request.reply(200, mockData[_option.path]),
    );
    _handler.next(_option);
  });
}

InterceptorsWrapper addInterceptor() {
  final _logger = Logger();
  return InterceptorsWrapper(onRequest: (_option, _handler) {
    _option.headers = {
      RequestHeader.tokenKey: token,
      RequestHeader.language: langApp
    };
    _logger.d("Request:");
    _logger.d("Log Url request: ${_option.baseUrl}");
    _logger.d("Log header request: ${_option.headers.toString()}");
    _handler.next(_option);
  }, onResponse: (_response, _handler) {
    _logger.d(
        "Response: ${_response.data?.toString() ?? _response.statusCode ?? "logResponseInterceptor empty"}");
    _handler.next(_response);
  }, onError: (_error, _handler) {
    _logger.d("Error: ${_error.error?.toString()}");
  });
}

void _registerServices(GetIt locator) {
  locator.registerLazySingleton<ArticleService>(
      () => ArticleService(locator<Dio>()));
  locator
      .registerLazySingleton<LoginService>(() => LoginService(locator<Dio>()));
}

void _registerDatabase(GetIt locator) async {
  final database =
      await $FloorAppDatabase.databaseBuilder("article_database.db").build();
  locator.registerLazySingleton<AppDatabase>(() => database);
  locator.registerLazySingleton<ArticleDao>(
      () => locator.get<AppDatabase>().articleDao);
}