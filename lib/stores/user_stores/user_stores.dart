import 'package:dribbble_clone/core/helper/constant.dart';
import 'package:dribbble_clone/networking/service/user_service.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'user_stores.g.dart';

class UserStores = UserStoresBase with _$UserStores;

abstract class UserStoresBase with Store {

  @observable
  bool isLoading = true;

}