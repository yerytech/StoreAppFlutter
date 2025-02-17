

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';



// abstract class SecureStorage{

//  Future<bool>save({required String key, required String value});
//  Future<String>read({required String key});

// }

// class TokenStorage implements SecureStorage {
//   final FlutterSecureStorage _secureStorage;
//   TokenStorage({ required FlutterSecureStorage secureStorage}):_secureStorage=secureStorage;
  
//   @override
//   Future<bool> save({required String key, required String value}) async {
//      try {
//        await _secureStorage.write(key: key, value: value);
//        return true;
//      } catch (e) {
//        return false;
//      }
    
//   }
//   @override
//   Future<String> read({required String key, }) async {
//      try {
//       return   await _secureStorage.read(key: key, )??"";
      
//      } catch (e) {
//        return "";
//      }
    
//   }


  
// }








class ApiStore {
// final SecureStorage _secureStorage;
late final Dio _dio ;
  final baseUrl = dotenv.env['API_URL']??"";


ApiStore(

);


// void  _addInterceptors(){
//   _dio.interceptors.add(
//   InterceptorsWrapper(
//   onRequest: (options, handler) async {
//     final token= 
//     if(token != null){
//       options.headers["Autorization"]="Baerer $token";
//     }

//     return handler.next(options);

//   },
//   onError: (error, handler) {
//     return handler.next(error);
//   },
//   )

//   );
// }






Future<Response> get(String path)async{
   String url = Uri.parse('$baseUrl/$path').toString();
  try {
    return await _dio.get(url);
  } catch (e) {
    throw Exception("Error al obtener datos $e");
  }
}

Future<Response> post(String path, {dynamic data})async{
    String  url = Uri.parse('$baseUrl$path').toString();
 
  
   
  try {
    return await _dio.post(
      url,
      data:data,
      options: Options(headers: {'Content-Type': 'application/json'}),
     
    );
  } catch (e) {
   
    throw Exception("Error al enviar datos :$e");
  }
}



}