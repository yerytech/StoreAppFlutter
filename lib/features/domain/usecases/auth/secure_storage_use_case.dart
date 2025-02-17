import 'package:productsapp/features/domain/repositories/securestorage/secure_store.dart';

class SecureStorageUseCase  {
  final SecureStorageRepository _secureStorageRepository;
  SecureStorageUseCase(this._secureStorageRepository);
    

    // Guardar token
   Future <bool>save (String key ,String value) {
    return  _secureStorageRepository.save(key: key, value: value);
   }
   
  //  Obtener token
  Future<String>read(String key){
    return  _secureStorageRepository.read(key: key);
  }

  // Borrar token 
  Future<bool> delete(String key){
    return  _secureStorageRepository.delete(key: key);
  }

}