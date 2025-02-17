import 'package:productsapp/features/domain/repositories/securestorage/secure_store.dart';

class SecureStorageUseCase  {
  final SecureStorageRepository _secureStorageRepository;
  SecureStorageUseCase(this._secureStorageRepository);
  
   Future <bool>save (String key ,String value) async{
    return await _secureStorageRepository.save(key: key, value: value);
   }

  Future<String>read(String key)async{
    return await _secureStorageRepository.read(key: key);
  }
  Future<bool> delete(String key)async{
    return await _secureStorageRepository.delete(key: key);
  }

}