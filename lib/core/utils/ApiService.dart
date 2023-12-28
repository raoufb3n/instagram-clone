import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://dummyapi.io/data/v1/';
  final Dio dio;
  
  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get('$_baseUrl$endPoint');

    return response.data;
  }
}