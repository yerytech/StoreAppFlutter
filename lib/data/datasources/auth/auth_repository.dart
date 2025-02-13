import 'package:productsapp/data/datasources/auth/auth_data.dart';
import 'package:productsapp/data/model/auth_response_model.dart';

class AuthRepository {
  
  final AuthData authData;
  AuthRepository(this.authData);
 
 Future<AuthResponseModel>login(String email,String password) async{
try {
    return await authData.authLogin(email, password);
} catch (e) {
  throw Exception("Error en el repositorio de auth:$e");
}



 }


}