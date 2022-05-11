
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../common/constants.dart';
import '../datasource/local/dao/article_dao.dart';
import '../datasource/local/db/app_database.dart';
import '../datasource/remote/service/article_service.dart';
import 'locator.config.dart';

final locator = GetIt.instance..allowReassignment = true;

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

  locator.registerSingleton<Dio>(Dio());
}

void _registerServices(GetIt locator) {

  locator.registerLazySingleton<ArticleService>(() => ArticleService(locator<Dio>(), baseUrl: Constants.BASE_URL));
}

void _registerDatabase(GetIt locator) async {
  final database = await $FloorAppDatabase.databaseBuilder("article_database.db").build();
  locator.registerLazySingleton<AppDatabase>(() => database);
  locator.registerLazySingleton<ArticleDao>(() => locator.get<AppDatabase>().articleDao);
}