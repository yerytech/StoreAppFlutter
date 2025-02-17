import 'package:dio/dio.dart';

abstract class CustomHttpClientRepository {
  Future<Response>get(String path);
  Future<Response>put(String path,dynamic data);
  Future<Response>patch(String path,String id);
  Future<Response>post(String path, dynamic data);
  Future<Response>delete(String path,String id);
}