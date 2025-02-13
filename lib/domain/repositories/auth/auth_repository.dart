import 'package:productsapp/domain/entities/auth.respose.entity.dart';

abstract class AuthRepository {
  Future<AuthResponseEntity>login(String email,String password);
}