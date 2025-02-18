
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:productsapp/config/Validators/form_validators.dart';
import 'package:productsapp/features/presentation/controller/form_controller/form_controller.dart';
import '../../../../config/routes/app_routes.dart';
import '../../widgets/widgets.dart';


class RegisterScreen extends ConsumerWidget {
const RegisterScreen({super.key});
  @override
  Widget build(BuildContext context,ref) {
    var size = MediaQuery.of(context).size;
    final formState = ref.watch(formControllersProvider);
      final goRouter=ref.watch(goRouterProvider);

     
    return  Scaffold(
      body:SafeArea(
        
        child: SingleChildScrollView(
          child: Form(
            key: formState.formKey,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(          
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                SizedBox(height: size.height * 0.2,),
                Text("Registrate", style: TextStyle( fontSize: 35, fontWeight: FontWeight.values[8] ),),
                Text("Porfavor , registrate para continuar",style: TextStyle(fontSize: 16),),
                SizedBox(height: 20,),
                 InputTextField(hintText: 'User name', icon: Icons.person_2_outlined, obscureText: false, controller:formState.fullNameController,),
                 SizedBox(height: 20,),
                 InputTextField( validator: FormValidators.validatorEmail,hintText: 'Correo Electronico', icon: Icons.email_outlined, obscureText: false, controller: formState.emailController,),
                 SizedBox(height: 20,),
                 InputTextField(
                  validator: FormValidators.validatorPassword,
                  hintText: 'Contraseña', icon: Icons.lock_outline, obscureText: true, controller: formState.passwordController,),
                 SizedBox(height: 20,),
                 CustomButton(onPress: () { 
                  // formState.formKey.currentState!.validate();
                 
                  },icon: Icons.arrow_forward, text: 'Registrarse', disable:false, ),
                 SizedBox(height: 20,),
                 Center(child: CustomTextButton(textCuestion: ' ¿Tienes una Cuenta ?', textAnsuwer: 'Ingresar', onPress: () { goRouter.go('/login');},)),
              ],),
            ),
          ),
        ),
      )
   );
  }
}





