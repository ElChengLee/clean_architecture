
import 'package:core/core/core_view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:presentation/src/common/routes/router.dart';

import '../../common/routes/router.gr.dart';

@Injectable()
class LoginViewModel extends CoreViewModel {

  void onLoginButtonPressed() {
    navigationService.push(ArticleListScreenRoute());
  }
}