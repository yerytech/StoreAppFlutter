import 'package:productsapp/features/domain/repositories/securestorage/secure_store.dart';

class SecureStorageUseCase  {
  final SecureStorageRepository _secureStorageRepository;
  SecureStorageUseCase(this._secureStorageRepository);
    

    // Guardar token
   Future <bool>save ( String value) {
    return  _secureStorageRepository.save( value: value);
   }
   
  //  Obtener token
  Future<String>read(String key){
    return  _secureStorageRepository.read();
  }

  // Borrar token 
  Future<bool> delete(String key){
    return  _secureStorageRepository.delete();
  }

}