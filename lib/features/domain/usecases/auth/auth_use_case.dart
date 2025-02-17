

import 'package:productsapp/features/domain/entities/auth.respose.entity.dart';
import 'package:productsapp/features/domain/repositories/auth/auth_repository.dart';

class AuthUseCase {
  final AuthRepository authRepository;

  AuthUseCase(this.authRepository);

  Future<AuthResponseEntity> login(String email,String password)async{
    return authRepository.login(email, password);
  }
  
  Future<AuthResponseEntity> register(String fullName,   String email,String password)async{
    return authRepository.register(fullName,email, password);
  }
  
 

}