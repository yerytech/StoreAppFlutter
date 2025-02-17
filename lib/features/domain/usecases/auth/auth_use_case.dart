

import 'package:productsapp/features/domain/entities/auth.respose.entity.dart';
import 'package:productsapp/features/domain/repositories/auth/auth_repository.dart';

class AuthUseCase {
  final AuthRepository _authRepository;

  AuthUseCase(this._authRepository);

  Future<AuthResponseEntity> login(String email,String password){
    return  _authRepository.login(email, password);
  }
  
  Future<AuthResponseEntity> register(String fullName,   String email,String password){
    return  _authRepository.register(fullName,email, password);
  }
  
 

}