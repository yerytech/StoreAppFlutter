



import 'package:productsapp/features/data/datasources/auth/auth_data.dart';
import 'package:productsapp/features/domain/entities/auth.respose.entity.dart';
import 'package:productsapp/features/domain/repositories/auth/auth_repository.dart';

class AuthRepositoryImpl implements  AuthRepository {
final AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImpl({
    required this.authRemoteDataSource
  });

  @override
  Future<AuthResponseEntity> login(String email, String password) async {
   try {
     final resp= await authRemoteDataSource.authLogin(email, password);
       
      return resp;
   } catch (e) {

     throw Exception("error en login $e");
   }
  }

  @override
  Future<AuthResponseEntity> register(String fullName, String email, String password) async {
   try {
     final resp= await authRemoteDataSource.authregister(fullName,  email, password);
      return resp;
   } catch (e) {
     throw Exception("error en login $e");
   }
  }


}