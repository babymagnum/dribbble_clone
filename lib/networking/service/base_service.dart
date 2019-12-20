import 'package:dio/dio.dart';
import 'package:dribbble_clone/core/helper/constant.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../model/success/success.dart';
import 'dart:convert';

class BaseService {

  Future<Map<String, String>> getHeaders() async {
    var prefs = await SharedPreferences.getInstance();
    var maps = Map<String, String>();
    maps['Authorization'] = 'Bearer ${prefs.getString(Constant.TOKEN)}';
    return maps;
  }

  // TODO: POST WITH FORM DATA
  Future<T> postFormData<T>(String url, FormData body) async {
    T resultResponse;

    try {
      final dio = Dio();
      final headers = await getHeaders();
      dio.interceptors.add(LogInterceptor(responseBody: true));
      var response = await dio.post(url, data: body, options: Options(headers: headers));
      print('ResponseSuccess: ${response.toString()}');
      var responseMap = jsonDecode(response.toString());
      resultResponse = fromJson<T>(responseMap);
    } on DioError catch (e) {
      if (e.response.statusCode == 302 && e.response.toString().contains('http://plis.id/plis_api/login')) {
        final preference = await SharedPreferences.getInstance();
        preference.clear();
      }
      print('ResponseError: ${e.response.toString()}');
      var responseMap = jsonDecode(e.response.toString());
      resultResponse = fromJson<T>(responseMap);
    }

    return resultResponse;
  }

  // TODO: POST
  Future<T> post<T>(String url) async {
    T resultResponse;

    try {
      final dio = Dio();
      dio.interceptors.add(LogInterceptor(responseBody: false));
      var response = await dio.post(url, options: Options(headers: await getHeaders()));
      print('ResponseSuccess: ${response.toString()}');
      var responseMap = jsonDecode(response.toString());
      resultResponse = fromJson<T>(responseMap);
    } on DioError catch (e) {
      if (e.response.statusCode == 302 && e.response.toString().contains('http://plis.id/plis_api/login')) {
        final preference = await SharedPreferences.getInstance();
        preference.clear();
      }
      print('ResponseError: ${e.response.toString()}');
      var responseMap = jsonDecode(e.response.toString());
      resultResponse = fromJson<T>(responseMap);
    }
    return resultResponse;
  }

  // TODO: POST WITH JSON BODY
  Future<T> postJsonBody<T>(String url, dynamic body, Map<String, dynamic> customHeaders) async {
    T resultResponse;

    try {
      final dio = Dio();
      dio.interceptors.add(LogInterceptor(responseBody: false));
      var response = await dio.post(url, data: body, options: Options(headers: await getHeaders()));
      print('ResponseSuccess: ${response.toString()}');
      var responseMap = jsonDecode(response.toString());
      resultResponse = fromJson<T>(responseMap);
    } on DioError catch (e) {
      if (e.response.statusCode == 302 && e.response.toString().contains('http://plis.id/plis_api/login')) {
        final preference = await SharedPreferences.getInstance();
        preference.clear();
      }
      print('ResponseError: ${e.response.toString()}');
      var responseMap = jsonDecode(e.response.toString());
      resultResponse = fromJson<T>(responseMap);
    }

    return resultResponse;

  }

  // TODO: GET
  Future<T> get<T>(String url) async {
    T resultResponse;

    try {
      final dio = Dio();
      dio.interceptors.add(LogInterceptor(responseBody: false));
      var response = await dio.get(url, options: Options(headers: await getHeaders()));
      print('ResponseSuccess: ${response.toString()}');
      var responseMap = jsonDecode(response.toString());
      resultResponse = fromJson<T>(responseMap);
    } on DioError catch (e) {
      if (e.response.statusCode == 302 && e.response.toString().contains('http://plis.id/plis_api/login')) {
        final preference = await SharedPreferences.getInstance();
        preference.clear();
      }
      print('ResponseError: ${e.response.toString()}');
      var responseMap = jsonDecode(e.response.toString());
      resultResponse = fromJson<T>(responseMap);
    }

    return resultResponse;
  }

  // TODO: GET LIST
  Future<List<T>> getList<T>(String url) async {
    List<T> resultResponse;

    try {
      var response = await http.get(url);
      print('ResponseSuccess: ${response.toString()}');

      if (response.statusCode == 200) {
        final parsed = json.decode(response.body);
        resultResponse = _fromJsonList<T>(parsed);
      } else {
        resultResponse = List();
      }
    } on DioError catch (e) {
      if (e.response.statusCode == 302 && e.response.toString().contains('http://plis.id/plis_api/login')) {
        final preference = await SharedPreferences.getInstance();
        preference.clear();
      }
      print('ResponseError: ${e.response.toString()}');
      var responseMap = jsonDecode(e.response.toString());
      resultResponse = List();
    }

    return resultResponse;
  }

  // TODO: PUT
  Future<T> put<T>(String url) async {
    T resultResponse;

    try {
      final dio = Dio();
      dio.interceptors.add(LogInterceptor(responseBody: false));
      var response = await dio.put(url, options: Options(headers: await getHeaders()));
      print('ResponseSuccess: ${response.toString()}');
      var responseMap = jsonDecode(response.toString());
      resultResponse = fromJson<T>(responseMap);
    } on DioError catch (e) {
      if (e.response.statusCode == 302 && e.response.toString().contains('http://plis.id/plis_api/login')) {
        final preference = await SharedPreferences.getInstance();
        preference.clear();
      }
      print('ResponseError: ${e.response.toString()}');
      var responseMap = jsonDecode(e.response.toString());
      resultResponse = fromJson<T>(responseMap);
    }

    return resultResponse;
  }

  // TODO: DELETE
  Future<T> delete<T>(String url) async {
    T resultResponse;

    try {
      final dio = Dio();
      dio.interceptors.add(LogInterceptor(responseBody: false));
      var response = await dio.delete(url, options: Options(headers: await getHeaders()));
      print('ResponseSuccess: ${response.toString()}');
      var responseMap = jsonDecode(response.toString());
      resultResponse = fromJson<T>(responseMap);
    } on DioError catch (e) {
      if (e.response.statusCode == 302 && e.response.toString().contains('http://plis.id/plis_api/login')) {
        final preference = await SharedPreferences.getInstance();
        preference.clear();
      }
      print('ResponseError: ${e.response.toString()}');
      var responseMap = jsonDecode(e.response.toString());
      resultResponse = fromJson<T>(responseMap);
    }

    return resultResponse;
  }

  // TODO: Converter json to dart object
  static T fromJson<T>(dynamic json) {
    if (json is Iterable) {
      return _fromJsonList<T>(json) as T;
    } else if (T == Success) {
      return Success.fromJson(json) as T;
    } else {
      // if this print statement occured, this means that you're not register the model class in here
      print('Unknown class, dont forget to add your model in BaseService.dart to parse the json');
      throw Exception('Unknown class');
    }
  }

  //from json list
  static List<T> _fromJsonList<T>(List jsonList) {

    if (jsonList == null) {
      return null;
    }

    List<T> output = List();

    for (Map<String, dynamic> json in jsonList) {
      output.add(fromJson(json));
    }

    return output;
  }
}
