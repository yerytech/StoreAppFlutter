import 'package:productsapp/features/data/datasources/tokenStorage/tokenstore.dart';
import 'package:productsapp/features/domain/repositories/securestorage/secure_store.dart';

class SecureStorageRepositoryImpl implements SecureStorageRepository {
  final TokenStorage _tokenStorage;
  
  SecureStorageRepositoryImpl({ required TokenStorage tokenStorage }):_tokenStorage=tokenStorage;
  
  @override
  Future<bool> delete({required String key}) {
   
    return _tokenStorage.delete(key);
  }
  
  @override
  Future<String> read({required String key}) {
     return _tokenStorage.read( key);
  }
  
  @override
  Future<bool> save({required String key, required String value}) {
     return _tokenStorage.save( key,  value);
  
  }
  
}