

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:productsapp/config/routes/app_routes.dart';
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await dotenv.load(fileName: 'lib/config/api/.env');
  } catch (e) {
    throw Exception("Error al leer la variables :$e");
  }

  
runApp(
  
  
  const ProviderScope(child: MyApp(),));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context,ref) {
      
     
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
routerConfig: appRouter,
    );
}}