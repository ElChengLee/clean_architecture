
import 'package:data/datasource/remote/service/login/login_service.dart';
import 'package:data/mapper/article_mapper.dart';
import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

import '../datasource/local/dao/article_dao.dart';
import '../datasource/local/entity/article_entity.dart';
import '../datasource/remote/dto/article_response.dart';
import '../datasource/remote/service/article_service.dart';
import 'base/base_repository.dart';

// @Injectable(as: LoginRepositoryImpl)
// class LoginRepositoryImpl extends BaseRepository
//     implements LoginRepository {
//   final LoginService _loginService;
//
//   LoginRepositoryImpl(this._loginService);
//
//   @override
//   Future<Result<LoginModel>> performLogin(LoginRequestModel model) {
//     return safeApiCall(_loginService.performLogin(model));
//   }
// }
