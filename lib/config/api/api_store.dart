import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiStore {

final Dio _dio =Dio();

Future<Response> get(String path)async{
  String url = dotenv.env['API_URL']??'';
  try {
    return await _dio.get("$url/$path");
  } catch (e) {
    throw Exception("Error al optener data $e");
  }
}

}