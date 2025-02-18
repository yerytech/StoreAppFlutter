
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/presentation/screens/screens.dart';


final GoRouter appRouter= GoRouter(
  initialLocation: "/home",
   routes: <RouteBase>[
    GoRoute(path: "/e",pageBuilder: (context,state){
      return CustomTransitionPage(child: const LoadingScreen(), transitionsBuilder: (context,animation,secundaryAnimation,child){
        return FadeTransition(opacity: animation.drive(CurveTween(curve: Curves.ease)),child: child,);
      });
    }),
    GoRoute(path: "/", pageBuilder: (context, state) {
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
  
);















