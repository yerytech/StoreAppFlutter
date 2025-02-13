



import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/screens/screens.dart';


final GoRouter appRouter= GoRouter(
  initialLocation: "/",
   routes: <RouteBase>[
    GoRoute(path: "/e",pageBuilder: (context,state){
      return CustomTransitionPage(child: const LoadingScreen(), transitionsBuilder: (context,animation,secundaryAnimation,child){
        return FadeTransition(opacity: CurveTween(curve: Curves.ease).animate(animation),child: child,);
      });
    }),
    GoRoute(path: "/", pageBuilder: (context, state) {
      return CustomTransitionPage(child: const RegisterScreen(), transitionsBuilder: (context,animaton,secundaryAnimation,child){
        return FadeTransition(opacity: CurveTween(curve: Curves.ease).animate(animaton),child: child,);
      });
    },),
    GoRoute(
      path: "/register",
      pageBuilder: (context, state) {
        return CustomTransitionPage(child: const RegisterScreen(), transitionsBuilder: (context,animation,secundaryAnimation,child){
          return FadeTransition(opacity: CurveTween(curve: Curves.easeIn).animate(animation),child: child,);
        });
      },
  ),
    GoRoute(path: "/home",pageBuilder: (context, state) {
      return CustomTransitionPage(child: const HomeScreen(), transitionsBuilder: (context,animation,secundaryAnimation,child){
        return FadeTransition(opacity: CurveTween(curve: Curves.ease).animate(animation),child: child,);
      });
    },),
    GoRoute(path: "/product",pageBuilder: (context,state){
      return  CustomTransitionPage(child: const ProductScreen(), transitionsBuilder: (context,animation,secundaryAnimate,child){
        return FadeTransition(opacity: CurveTween(curve: Curves.ease).animate(animation),child: child,);
      });
    }),
   ],
  
);















