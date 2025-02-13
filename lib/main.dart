import 'package:flutter/material.dart';
import 'presentation/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ProductsApp',
     initialRoute: "login",
      routes: {
        "login":(context)=> const LoginScreen(),
        "register":(context)=> const RegisterScreen(),
        "loading":(context)=> const LoadingScreen(),
        "Home":(context)=> const HomeScreen(),
      },
       );
  }
}