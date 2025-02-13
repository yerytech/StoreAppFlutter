

import 'package:productsapp/domain/entities/auth.respose.entity.dart';
import 'package:productsapp/domain/repositories/auth/auth_repository.dart';

class AuthUseCase {
  final AuthRepository authRepository;

  AuthUseCase(this.authRepository);

  Future<AuthResponseEntity> execute(String email,String password)async{
    return authRepository.login(email, password);
  }

}