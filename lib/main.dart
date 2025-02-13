import 'package:flutter/material.dart';
import 'package:productsapp/config/routes/app_routes.dart';
import 'config/routes/app_pages.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ProductsApp',
     initialRoute: AppRoutes.login,
      routes: AppPages.routes,
       );
  }
}