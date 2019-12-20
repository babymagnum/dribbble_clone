import 'package:dribbble_clone/networking/request/login_request.dart';
import 'package:dribbble_clone/networking/service/user_service.dart';
import 'package:mobx/mobx.dart';

part 'base_stores.g.dart';

class BaseStores = BaseStoresBase with _$BaseStores;

abstract class BaseStoresBase with Store {

  @observable
  bool isLoading = true;

  @action
  testAction(bool value) {
    isLoading = value;
  }

  doLogin(String email, String password) async {
    final success = await UserService().doLogin(LoginRequest(email, password));
    print(success.status);
  }

}