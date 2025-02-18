
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:productsapp/features/data/datasources/auth/auth_data.dart';
import 'package:productsapp/features/data/repository/auth_repository.dart';
import 'package:productsapp/features/domain/repositories/auth/auth_repository.dart';
import 'package:productsapp/features/domain/usecases/auth/auth_use_case.dart';
import 'package:productsapp/features/presentation/providers/authstate.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthUseCase authUseCase;
  AuthNotifier(this.authUseCase): super(AuthState());
  
Future<void> login (String email ,String password) async{
state=state.copyWith(isLoading: true,errorMessage: null);
try {
  final resp = await authUseCase.login(email, password);

  state=state.copyWith(isLoading: false,authresponse: resp);
} catch (e) {
 
  state=state.copyWith(errorMessage: "error al iniciar cessión",isLoading: false);
}
}

}
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
  
   return AuthNotifier(authUseCase);
});