import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:productsapp/features/products_app.dart';

void main()async{
WidgetsFlutterBinding.ensureInitialized();
 await dotenv.load(fileName: "lib/config/api/.env" );
runApp(ProviderScope(child: ProductsApp()));
}


