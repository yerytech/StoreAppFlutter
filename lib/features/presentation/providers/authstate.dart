
import 'package:productsapp/features/domain/entities/auth.respose.entity.dart';

class AuthState {
 final bool isLoading;
final  AuthResponseEntity ? authResponse;
final   String? token;
 final  String? errorMessage;

 AuthState({
  this.isLoading=false,
  this.authResponse,
  this.errorMessage,
  this.token
 });



 AuthState copyWith({
bool? isLoading,
AuthResponseEntity? authResponse,
String? errorMessage,
 String? token

 }){
  return AuthState(
    isLoading: isLoading ?? this.isLoading,
    authResponse: authResponse?? this. authResponse,
    errorMessage: errorMessage?? this.errorMessage,
    token: token?? this.token

  );
 }

}

