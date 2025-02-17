
// import 'package:productsapp/data/model/auth_response_model.dart';

// class AuthData {
//   // final HttpClient _httpClient;
// //  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();
// //  AuthData(this._httpClient);

//  Future<AuthResponseModel> authLogin(String email,String password) async{
//    email =email.toLowerCase();
// // envia la solicitud post 

//   try {
//       final response = await _httpClient.post('/auth/login',data:{
//         "email":email,
//         "password":password
//       });
       
//         final data= AuthResponseModel.fromJson(response.data);
//       //  await _saveToken(data.token);
//       //onvierto la respuesta a Auth responsemodel
//       return data;

//   } catch (e) {
    
//     throw Exception("Error al enviar data: $e");
    
//   }
//  }


//  Future<AuthResponseModel> authRegister ( String fullName,String email,String password) async{
//   email=email.toLowerCase();
//   try {
//      final response = await apiStore.post("/auth/register",data: {
//        "fullName":fullName,
//        "email":email,
//        "password":password
//      });
   
 

//   return AuthResponseModel.fromJson(response.data);



//   } catch (e) {
//      throw Exception("Error al registrarse: $e");

//   }

//  }


// Future<AuthResponseModel>authCheckStatus() async{
//   try {
//     final response  = await apiStore.get("/auth/check-status");
//     return AuthResponseModel.fromJson(response.data);
//   } catch (e) {
//     throw Exception("Erroral checar el status: $e");
//   }
// }

//   // Future<void> _saveToken(String accessToken) async {
//   //   await _secureStorage.write(key: 'auth_token', value: accessToken);
   
//   // }

// }