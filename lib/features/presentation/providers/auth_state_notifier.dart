
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:productsapp/features/data/datasources/auth/auth_data.dart';
import 'package:productsapp/features/data/datasources/tokenStorage/tokenstore.dart';
import 'package:productsapp/features/data/repository/auth_repository.dart';
import 'package:productsapp/features/data/repository/secure_storage_repository.dart';
import 'package:productsapp/features/domain/repositories/auth/auth_repository.dart';
import 'package:productsapp/features/domain/repositories/securestorage/secure_store.dart';
import 'package:productsapp/features/domain/usecases/auth/auth_use_case.dart';
import 'package:productsapp/features/presentation/providers/authstate.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthUseCase authUseCase;
  final SecureStorageRepository secureStorage;
  
  AuthNotifier(this.authUseCase,this.secureStorage): super(AuthState());
  
Future<void> login (String email ,String password) async{
state=state.copyWith(isLoading: true,errorMessage: null);
try {
  final resp = await authUseCase.login(email, password);
  if (resp.token.isNotEmpty) {
     await secureStorage.save(value: resp.token);
  }


  state=state.copyWith(isLoading: false,authresponse: resp);
} catch (e) {
 
  state=state.copyWith(errorMessage: "error al iniciar cessión",isLoading: false);
}
}

}



final tokenStorageProvider = Provider<TokenStorage>((ref) {
return TokenStorageImpl();
 
});

final secureStorageProvider = Provider<SecureStorageRepository>((ref) {
  final tokenStorage = ref.watch(tokenStorageProvider);
  return SecureStorageRepositoryImpl(tokenStorage: tokenStorage) ;
});



 

 final authRemoteDataSourceProvider = Provider<AuthRemoteDataSource>((ref) {
  return AuthRemoteDataImple() ;
 });


 final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final authDataSource = ref.watch(authRemoteDataSourceProvider);
  return AuthRepositoryImpl(authRemoteDataSource: authDataSource);
 });


final authUseCaseProvider = Provider<AuthUseCase>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return AuthUseCase(repository);
});



final authProvider = StateNotifierProvider<AuthNotifier,AuthState>((ref) {
  final authUseCase=ref.watch(authUseCaseProvider);
  final secureStorage= ref.watch(secureStorageProvider);

   return AuthNotifier(authUseCase,secureStorage);
});


final authCheckProvider = FutureProvider<String>((ref) async {

  final secureStorage =ref.watch(secureStorageProvider);

  final token = await secureStorage.read();
  return token;

});