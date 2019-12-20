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

}