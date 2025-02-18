import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:productsapp/features/data/datasources/tokenStorage/tokenstore.dart';
import 'package:productsapp/features/data/repository/secure_storage_repository.dart';
import 'package:productsapp/features/domain/repositories/securestorage/secure_store.dart';



final tokenStorageProvider = Provider<TokenStorage>((ref) {
return TokenStorageImpl();
 
});

final secureStorageProvider = Provider<SecureStorageRepository>((ref) {
  final tokenStorage = ref.watch(tokenStorageProvider);
  return SecureStorageRepositoryImpl(tokenStorage: tokenStorage) ;
});



 