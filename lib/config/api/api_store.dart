import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiStore {

final Dio _dio =Dio();

Future<Response> get(String path)async{
   String fullUrl = Uri.parse('${dotenv.env['API_URL']}/$path').toString();
  try {
    return await _dio.get(fullUrl);
  } catch (e) {
    throw Exception("Error al optener data $e");
  }
}

}