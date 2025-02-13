import 'package:dio/dio.dart';

class ApiStore {

final Dio _dio =Dio();

Future<Response> get(String path)async{
  try {
    return await _dio.get("localhost:3000/api/$path");
  } catch (e) {
    throw Exception("Error al optenerdata");
  }
}

}