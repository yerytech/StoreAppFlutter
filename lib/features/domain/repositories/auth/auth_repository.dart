import 'package:productsapp/features/domain/entities/auth.respose.entity.dart';

abstract class AuthRepository {
  Future<AuthResponseEntity>login(String email,String password);
  Future<AuthResponseEntity> register (String fullName,String eemail,String password);
 

}