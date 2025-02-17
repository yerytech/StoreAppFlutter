import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:productsapp/domain/entities/auth.respose.entity.dart';
import 'package:productsapp/domain/usecases/auth/auth_use_case.dart';



// Definimos el estado de autenticación
class AuthState {
  final bool isLoading;
  final AuthResponseEntity? user;
  final String? error;

  AuthState({this.isLoading = false, this.user, this.error});
}

// StateNotifier para manejar la autenticación
class AuthController extends StateNotifier<AuthState> {
  final AuthUseCase _authUseCase;

  AuthController(this._authUseCase) : super(AuthState());

  // Método para hacer login
  Future<void> login(String email, String password) async {
    state = AuthState(isLoading: true); // Indicamos que está cargando

    try {
      final user = await _authUseCase.login(email, password);
      state = AuthState(user: user); // Guardamos el usuario si el login es exitoso
    } catch (e) {
      
       if (e.toString().contains("400")||e.toString().contains("401")) {
         state = AuthState(error: "Revise su  usuario y contraseña");
       }
     
    }
  }


  Future<void>register(String fullName,String email,String password)  async{


    try {
      final user = await _authUseCase.register(fullName, email, password);
      state=AuthState(user: user);

    } catch (e) {
      
      state=AuthState(error: "Error:$e");
    }

  }

  Future<void>checkStatus()async{
    try {
      final status =await _authUseCase.checkStatus();
      log(status.toString());
     
    } catch (e) {
      state=AuthState(error: "Error:$e");
    }
  }


}

// Provider de Riverpod para el AuthController
