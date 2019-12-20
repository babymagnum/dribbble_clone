import 'package:dio/dio.dart';

class LoginRequest {
  LoginRequest(this.email, this.password);

  String email;
  String password;

  FormData getBody() {
    final form = FormData();

    form.fields
      ..add(MapEntry('email', email))
      ..add(MapEntry('password', password));

    return form;
  }
}