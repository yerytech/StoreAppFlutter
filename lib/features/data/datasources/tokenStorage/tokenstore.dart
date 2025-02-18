
import 'package:flutter_secure_storage/flutter_secure_storage.dart';






abstract class TokenStorage {
Future <bool>save(String key,String value);
Future <bool>delete(String key);
Future <String>read(String key);
  
}
class TokenStorageImpl implements TokenStorage {
  final FlutterSecureStorage _secureStorage = FlutterSecureStorage();



  
   @override
     Future<bool> save(   String key , String value) async{
    try {
        await _secureStorage.write(key:key , value: value);
        return true;
    } catch (e) {
      
      throw Exception("Error al guardar token ");
  
   }

}


@override
  Future<String>read(String key) async{

try {
  return await _secureStorage.read(key: key)??"";
} catch (e) {
   throw Exception("Error al obtener token");
}


}

  @override
  Future<bool> delete(String key)async {
    
    try {
      await _secureStorage.delete(key: key);
       return true;
    } catch (e) {
      throw Exception("Error al borrar token");
    }

  }






}