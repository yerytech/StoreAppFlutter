
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:productsapp/features/presentation/providers/auth_state_notifier.dart';
import '../../features/presentation/screens/screens.dart';

final goRouterProvider = Provider<GoRouter>((ref) {

  
   
  return GoRouter(
      
    
  initialLocation: "/login",
   routes: <RouteBase>[
    GoRoute(path: "/loading",pageBuilder: (context,state){
      return CustomTransitionPage(child: const LoadingScreen(), transitionsBuilder: (context,animation,secundaryAnimation,child){
        return FadeTransition(opacity: animation.drive(CurveTween(curve: Curves.ease)),child: child,);
      });
    }),
    GoRoute(path: "/login", pageBuilder: (context, state) {
      return CustomTransitionPage(child: const LoginScreen(), transitionsBuilder: (context,animation,secundaryAnimation,child){
        return FadeTransition(opacity: animation.drive(CurveTween(curve: Curves.ease)),child: child,);
      });
    },),
    GoRoute(
      path: "/register",
      pageBuilder: (context, state) {
        return CustomTransitionPage(child: const RegisterScreen(), transitionsBuilder: (context,animation,secundaryAnimation,child){
          return FadeTransition(opacity:animation.drive(CurveTween(curve: Curves.ease)),child: child,);
        });
      },
  ),
    GoRoute(path: "/home",pageBuilder: (context, state) {
      return CustomTransitionPage(child: const HomeScreen(), transitionsBuilder: (context,animation,secundaryAnimation,child){
        return FadeTransition(opacity: animation.drive(CurveTween(curve: Curves.ease)),child: child,);
      });
    },),
    GoRoute(path: "/product",pageBuilder: (context,state){
      return  CustomTransitionPage(child: const ProductScreen(), transitionsBuilder: (context,animation,secundaryAnimate,child){
        return FadeTransition(opacity: animation.drive(CurveTween(curve: Curves.ease)),child: child,);
      });
    }),
   ],

   redirect: (context, state){
     final authToken = ref.watch(authCheckProvider).value;
      
      if (authToken!.isEmpty) {
        return "/login";
      //n
      }else {
        return "/home";
      }

   },
  
);
});

















