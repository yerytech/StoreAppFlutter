
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:productsapp/domain/repositories/securestorage/secure_store.dart';

class TokenStorage implements SecureStorageRepository {
  final FlutterSecureStorage _secureStorage;


TokenStorage({required FlutterSecureStorage secureStore}):_secureStorage=secureStore;
  
   @override
     Future<bool> save( { required String key , required String value}) async{
    try {
        await _secureStorage.write(key:key , value: value);
        return true;
    } catch (e) {
      
      throw Exception("Error al guardar token ");
  
   }

}


@override
  Future<String>read({required String key}) async{

try {
  return await _secureStorage.read(key: key)??"";
} catch (e) {
   throw Exception("Error al obtener token");
}


}

  @override
  Future<bool> delete({required String key})async {
    
    try {
      await _secureStorage.delete(key: key);
       return true;
    } catch (e) {
      throw Exception("Error al borrar token");
    }

  }






}