class UserEntity {
  final String id;
  final String email;
  final String fullName;
  final bool isActive;
  final List<String>role;
  
  UserEntity({
   required this.id,
   required this.email,
   required this.fullName,
   required this.isActive,
   required this.role
  });
  
}