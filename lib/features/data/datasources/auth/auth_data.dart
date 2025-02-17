import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:productsapp/features/data/model/auth_response_model.dart';

abstract class AuthRemoteDataSource {
  Future<AuthResponseModel> authLogin(String email,String password);
  Future<AuthResponseModel> authregister( String fullName,  String email,String password);
}

class AuthRemoteDataImple implements AuthRemoteDataSource {
 final Dio _httpClient = Dio();
  final baseUrl = dotenv.env["API_URL"]??"";



  @override
  Future<AuthResponseModel> authLogin(String email, String password) async {
      
    try {
       final response = await _httpClient.post("$baseUrl/auth/login",data: {
        "email":email,
        "password":password
       });

       
        return AuthResponseModel.fromJson(response.data);

    } catch (e) {
      throw Exception("Error en login$e");
    }
  }

  @override
  Future<AuthResponseModel> authregister( String fullNAme,  String email, String password) async {
    
    try {
       final response = await _httpClient.post("$baseUrl/auth/register",data: {
        "fullName":fullNAme,
        "email":email,
        "password":password
       });
        return AuthResponseModel.fromJson(response.data);

    } catch (e) {
      throw Exception("Error en login$e");
    }
  }
  
}