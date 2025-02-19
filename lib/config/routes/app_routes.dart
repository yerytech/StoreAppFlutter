
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:productsapp/features/presentation/providers/auth_state_notifier.dart';
import '../../features/presentation/screens/screens.dart';

final goRouterProvider = Provider<GoRouter>((ref) {

  
   
  return GoRouter(
      
    
  initialLocation: "/loading",
   routes: <RouteBase>[
 


    GoRoute(path: "/loading",
    
    builder: (context, state)=>LoadingScreen()),
    GoRoute( path: "/login",
     builder: (context, state)  {
      debugPrint("login estamos ");
      return LoginScreen();
     }
  ),
    GoRoute(
      path: "/register",builder: (context, state) => RegisterScreen(),
  ),
    GoRoute(path: "/home", builder: (context, state) =>   HomeScreen(),),
    GoRoute(path: "/product",builder: (context, state) => ProductScreen(),),
   ],

   redirect: (context, state) async{
    
     final authState = ref.watch(authProvider);
      
      if (authState.isLoading) {
        return "/loading";
      //n
      }else if(authState.token!=null || authState.token!.isNotEmpty){
           return "/home";
      }else{
        return "/login";
      }

   },
  
);
});

















