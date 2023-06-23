import 'package:dio/dio.dart';

abstract class ResponseHandler {
  ResponseHandler();
}

class SuccsesResponse extends ResponseHandler {}

class ErrorResponse extends ResponseHandler {
  String error;
  ErrorResponse(this.error);
}

class ExcaptionResponse extends ResponseHandler {
  DioError error;
  ExcaptionResponse(this.error);
}
