import 'package:productsapp/features/data/datasources/tokenStorage/tokenstore.dart';
import 'package:productsapp/features/domain/repositories/securestorage/secure_store.dart';

class SecureStorageRepositoryImpl implements SecureStorageRepository {
  final TokenStorage _tokenStorage;

  SecureStorageRepositoryImpl({ required TokenStorage tokenStorage }):_tokenStorage=tokenStorage;
  
  @override
  Future<bool> delete() {
   
    return _tokenStorage.delete();
  }
  
  @override
  Future<String> read() {
     return _tokenStorage.read();
  }
  
  @override
  Future<bool> save({required String value}) {
     return _tokenStorage.save( value);
  
  }
  
}