import 'package:dio/dio.dart';
import 'package:user/core/reaponse_hende.dart';
import 'package:user/view/auth/splash_cren.dart';

class AuthService {
  static Future<ResponseHandler> regster(
      {required String userName,
      required String email,
      required String paswword}) async {
    try {
      Response response = await Dio().post(
          "http://192.168.1.3:4000/register",
          data: {"username": userName, "email": email, "password": paswword});
      if (response.statusCode == 201) {
        return SuccsesResponse();
      } else {
        return ErrorResponse(response.statusMessage.toString());
      }
    } on DioError catch (e) {
      return ExcaptionResponse(e);
    }
  }

  static Future login() async {}
}

class Service {
  static Future<ResponseHandler> sing(
      {required String userName,

      required String paswword}) async {
    try {
      Response response = await Dio().post(
          "http:/192.168.0.100:4000/register",
          data: {"username": userName,  "password": paswword});
      if (response.statusCode == 201) {
        return SuccsesResponse();
      } else {
        return ErrorResponse(response.statusMessage.toString());
      }
    } on DioError catch (e) {
      return ExcaptionResponse(e);
    }
  }

  static Future login() async {}
}

class Currencymodel {
  Future getCurrency() async {
    try {
      Response response = await Dio().get(
          "https://nbu.uz/uz/exchange-rates/json/");
      if (response.statusCode == 200) {
        return (response.data as List).map((e) => const SplashScren());
      } else {
        return response.statusCode.toString();
      }
    } on DioError catch (e) {
      return e.hashCode.toString();
    }
  }
}

