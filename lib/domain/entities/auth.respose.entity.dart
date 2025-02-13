class AuthResponseEntity {
  final String id;
  final String email;
  final String fullName;
  final bool isActive;
  final List<String>role;
  final String token;
  
  AuthResponseEntity({
   required this.id,
   required this.email,
   required this.fullName,
   required this.isActive,
   required this.role,
   required this.token
  });
  
}