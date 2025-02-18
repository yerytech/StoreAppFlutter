
import 'package:productsapp/features/domain/entities/auth.respose.entity.dart';

class AuthState {
 final bool isloading;
final  AuthResponseEntity ? authResponse;
final   String? token;
 final  String? errorMessage;

 AuthState({
  this.isloading=false,
  this.authResponse,
  this.errorMessage,
  this.token
 });



 AuthState copyWith({
bool? isLoading,
AuthResponseEntity? authresponse,
String? errorMessage,
 String? token

 }){
  return AuthState(
    isloading: isLoading?? isloading,
    authResponse: authresponse?? authResponse,
    errorMessage: errorMessage??errorMessage,
    token: token??token

  );
 }

}

