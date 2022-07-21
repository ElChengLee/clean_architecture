
import 'package:core/core/core_view_model.dart';
import 'package:core/service/toast_service.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:presentation/src/common/routes/router.dart';

import '../../common/routes/router.gr.dart';

@Injectable()
class LoginViewModel extends CoreViewModel {

  final LoginUseCase _loginUseCase;
  final ToastService _toastService;

  LoginViewModel(this._loginUseCase, this._toastService);

  void onLoginButtonPressed() async {
    loading();

    final result = await _loginUseCase.performLogin(LoginRequestModel(username: "username", password: "password"));
    result.when(
      success: (data) => navigationService.push(ArticleListScreenRoute()),
      error: (errorType, message) => _toastService.show(msg: message),
    );

    loaded(result.isSuccessful);
  }
}