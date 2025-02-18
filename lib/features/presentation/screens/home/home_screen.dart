import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:productsapp/features/presentation/providers/auth_state_notifier.dart';



class HomeScreen extends ConsumerWidget {
const HomeScreen({super.key});
  @override
  Widget build(BuildContext context, ref) {
    return  Scaffold(
      body: Center(
        child: Column(
          
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
            
        
          children: [
          Text("Home Screen"),
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20)
            ),
            
            child: TextButton(onPressed: () async{
              await ref.watch(authProvider.notifier).logOut();
            } , child: Text("Salir" ,style: TextStyle(color: Colors.white),)))
        
        
        ],),
      )
   );
  }
}