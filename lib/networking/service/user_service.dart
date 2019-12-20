import 'package:dribbble_clone/main.dart';
import 'package:dribbble_clone/model/success/success.dart';
import 'package:dribbble_clone/networking/request/login_request.dart';
import 'package:dribbble_clone/networking/service/base_service.dart';

class UserService extends BaseService {
  
  Future<Success> doLogin(LoginRequest body) async {
    return await postFormData("${MyApp.BASE_API}/api/login", body.getBody());
  }

}