
import 'package:flutter_secure_storage/flutter_secure_storage.dart';






abstract class TokenStorage {
Future <bool>save(String value);
Future <bool>delete();
Future <String>read();
  
}
class TokenStorageImpl implements TokenStorage {
  final FlutterSecureStorage _secureStorage = FlutterSecureStorage();
    static const String _token="auth_token";


  
   @override
     Future<bool> save(String value) async{
    try {
        await _secureStorage.write(key: _token,value: value );
        return true;
    } catch (e) {
      
      throw Exception("Error al guardar token ");
  
   }

}


@override
  Future<String>read() async{

try {
  return await _secureStorage.read(key: _token)??"";
} catch (e) {
   throw Exception("Error al obtener token");
}


}

  @override
  Future<bool> delete()async {
    
    try {
      await _secureStorage.delete(key: _token);
       return true;
    } catch (e) {
      throw Exception("Error al borrar token");
    }

  }






}