

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:productsapp/config/routes/app_routes.dart';

class ProductsApp extends ConsumerWidget {
  const ProductsApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final routerConfig=ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerConfig: routerConfig,
    );
  }
}