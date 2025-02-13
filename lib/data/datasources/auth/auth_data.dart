import 'package:productsapp/config/api/api_store.dart';
import 'package:productsapp/data/model/auth_response_model.dart';

class AuthData {
  final ApiStore apiStore;

 AuthData(this.apiStore);

 Future<AuthResponseModel> authLogin(String email,String password) async{

// envia la solicitud post 
  try {
      final response = await apiStore.post('/api/auth/login',data: {
        "email":email,
        "password":password
      });
      //onvierto la respuesta a Auth responsemodel
      return AuthResponseModel.fromJson(response.data);

  } catch (e) {
    throw Exception("Error al enviar data: $e");
    
  }
 }

}