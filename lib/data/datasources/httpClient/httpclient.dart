// ignore: implementation_imports
import 'package:dio/dio.dart';
import 'package:productsapp/domain/repositories/hettpclient/http_client.dart';

class CustomHttpclient implements CustomHttpClientRepository {
  final Dio _httpClient;
  final String _baseUrl;
CustomHttpclient(this._baseUrl, {required Dio httpClient}):_httpClient=httpClient;

  @override
  Future<Response> delete(String path, String id) async {
    try {
       final response= await _httpClient.delete("$_baseUrl/$path/$id");
        if(response.statusCode! >= 200 && response.statusCode! < 300){
          return response.data;
        }else{
          throw Exception("Error al borrar Elemento con el id: ${response.statusCode}");
        }
    } catch (e) {
      throw Exception("Error al borrar Elemento con el id: $id");
    }
    
  }

  @override
  Future<Response> get(String path) async{
    
    try {
      final response =  await _httpClient.get("$_baseUrl$path");
        if (response.statusCode! >= 200 && response.statusCode! < 300) {
          return response.data;
        }else{
          throw Exception("Error al hacer el get ${response.statusCode}");
        }
    } catch (e) {
      throw Exception("Error al obtener dato $e");
    }
  }

  @override
  Future<Response> patch(String path, String id) async {
      try {
         final response = await _httpClient.patch("$_baseUrl/$path/$id");
        if (response.statusCode! >= 200 && response.statusCode! < 300) {
           return response.data;
        }else{
          throw Exception("Error al realizar patch ${response.statusCode}");
        }
      } catch (e) {
        throw Exception("Error al realizar patch $e");
      }
  }

  @override
  Future<Response> post(String path,dynamic data) async {
    
  try {
    final response =  await _httpClient.post("$_baseUrl$path",data: data);
    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      return response.data;
    }else{
       throw Exception("Error al realizar el post ${response.statusCode}");
    }
  } catch (e) {
    throw Exception("Error al realizar el post $e");
  }}

  @override
  Future<Response> put(String path, dynamic data) async{
   
    try {
      final response = await  _httpClient.put("$_baseUrl$path",data: data);
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        return response.data;
        
      }else{
        throw Exception("Error al realizar el put ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error al realizar el put $e");
    }
  }
  
}