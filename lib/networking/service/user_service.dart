import 'package:dribbble_clone/main.dart';
import 'package:dribbble_clone/model/success/success.dart';
import 'package:dribbble_clone/networking/service/base_service.dart';
import '../../model/get_token/get_token.dart';

class UserService extends BaseService {

  Future<Success> getAuthCode() async {
    return await get('https://dribbble.com/oauth/authorize?client_id=${MyApp.client_id}&scope=public+upload');
  }

  Future<GetToken> getToken(String code) async {
    return await post('https://dribbble.com/oauth/token?client_id=${MyApp.client_id}&client_secret=${MyApp.client_secret}&code=$code');
  }

}