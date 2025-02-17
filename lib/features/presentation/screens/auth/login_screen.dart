
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:productsapp/config/routes/app_routes.dart';

import 'package:productsapp/config/Validators/form_validators.dart';

import 'package:productsapp/features/presentation/controller/form_controller/form_controller.dart';
import 'package:productsapp/features/presentation/providers/auth_state_notifier.dart';


import '../../widgets/widgets.dart';


class LoginScreen extends ConsumerWidget {

const LoginScreen({super.key});

  @override
  Widget build(BuildContext context,ref) {
    final formState= ref.watch(formControllersProvider);

   

    var size = MediaQuery.of(context).size;
    
  
      // var formKey = GlobalKey<FormState>();
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body:Form(
        canPop: false,
        key: formState.formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(          
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              SizedBox(height: size.height * 0.2,),
              Text("Ingresar", style: TextStyle( fontSize: 35, fontWeight: FontWeight.values[8] ),),
              Text("Porfavor , ingresa para continuar",style: TextStyle(fontSize: 16),),
              SizedBox(height: 20,),
               InputTextField( validator: FormValidators.validatorEmail,hintText: 'Correo Electronico', icon: Icons.email_outlined, obscureText: false, controller: formState.emailController,),
               SizedBox(height: 20,),
               InputTextField(
                //  errorText: authData.error,
                validator: FormValidators.validatorPassword,
                hintText: 'Contraseña', icon: Icons.lock_outline, obscureText: true, controller: formState.passwordController,),
               SizedBox(height: 20,),
               CustomButtom(onpress: () async {
                formState.formKey.currentState!.validate();
                  
                   await ref.watch(authProvider.notifier).login(formState.emailController.text, formState.passwordController.text);
                    
                
                 },icon: Icons.arrow_forward, text: 'Ingresar', disable:false ),
               SizedBox(height: 20,),
               Center(child: CustomTextButtom(textCuestion: ' ¿Notines Cuenta ?', textAnsuwer: 'Crea una', onPress: () { appRouter.go("/register");},)),
            ],),
          ),
        ),
      )
   );
  }
}





