
import 'package:flutter/material.dart';
import 'package:productsapp/config/routes/app_routes.dart';

import 'package:productsapp/config/Validator/form_validators.dart';
import '../../widgets/widgets.dart';


class LoginScreen extends StatelessWidget {
const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final formKey = GlobalKey<FormState>();
    final emailTextController = TextEditingController();
    final passwordTextController = TextEditingController();
    return  Scaffold(
      body:SafeArea(
        
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
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
                 InputTextField( validator: FormValidators.validatorEmail,hintText: 'Correo Electronico', icon: Icons.email_outlined, obscureText: false, controller: emailTextController,),
                 SizedBox(height: 20,),
                 InputTextField(
                  validator: FormValidators.validatorPassword,
                  hintText: 'Contraseña', icon: Icons.lock_outline, obscureText: true, controller: passwordTextController,),
                 SizedBox(height: 20,),
                 CustomButtom(onpress: () { formKey.currentState!.validate(); },icon: Icons.arrow_forward, text: 'Ingresar', ),
                 SizedBox(height: 20,),
                 Center(child: CustomTextButtom(textCuestion: ' ¿Notines Cuenta ?', textAnsuwer: 'Crea una', onPress: () {Navigator.pushNamed(context, AppRoutes.register);},)),
              ],),
            ),
          ),
        ),
      )
   );
  }
}





