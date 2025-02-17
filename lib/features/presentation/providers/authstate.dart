
import 'package:productsapp/features/domain/entities/auth.respose.entity.dart';

class AuthState {
 final bool isloading;
final  AuthResponseEntity ? authResponse;
 final  String? errorMessage;

 AuthState({
  this.isloading=false,
  this.authResponse,
  this.errorMessage
 });



 AuthState copyWith({
bool? isLoading,
AuthResponseEntity? authresponse,
String? errorMessage,

 }){
  return AuthState(
    isloading: isLoading?? isloading,
    authResponse: authresponse?? authResponse,
    errorMessage: errorMessage??errorMessage,

  );
 }



}