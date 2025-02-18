abstract class SecureStorageRepository {
   Future<bool>save({required String value});
   Future<String>read();
   Future<bool>delete();




}