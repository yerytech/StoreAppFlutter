// ignore: implementation_imports
import 'package:dio/dio.dart';
import 'package:productsapp/features/data/repository/http_client_repositoy.dart';

class CustomHttpclient implements CustomHttpClientRepository {
  final Dio _httpClient;
  final String _baseUrl;
CustomHttpclient(this._baseUrl, {required Dio httpClient}):_httpClient=httpClient;

Future<Response>_request(Future<Response>request)async{
  try {
    final response= await request;
    if (response.data>=200 && response.statusCode! <300){
      return response.data;     
    }else{
      throw Exception("Error en la respuesta ${response.statusCode}");
    }
  } catch (e) {
     throw Exception("Error al realizar la solicitud $e");
  }
}


  @override
  Future<Response> delete(String path, String id) async {
   return _request(_httpClient.delete("$_baseUrl/$path/$id"));  
  }

  @override
  Future<Response> get(String path) async{
    return _request(_httpClient.get("$_baseUrl/$path"));
  }

  @override
  Future<Response> patch(String path, String id) async {
    return _request(_httpClient.patch("$_baseUrl/$path/$id"));
  }

  @override
  Future<Response> post(String path,dynamic data) async {
     return _request(_httpClient.post("$_baseUrl/$path/",data: data));
  }

  @override
  Future<Response> put(String path, dynamic data) async{
     return _request(_httpClient.put("$_baseUrl/$path",data: data));
  }
  
}