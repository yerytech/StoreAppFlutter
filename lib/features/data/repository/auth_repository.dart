import 'package:productsapp/features/data/model/auth_response_model.dart';

abstract class AuthDataRepository {
  Future<AuthResponseModel>login(String email,String password);
  Future<AuthResponseModel>register( String fullName,String email,String password);
}