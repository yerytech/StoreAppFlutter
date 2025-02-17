


import 'package:productsapp/features/domain/entities/auth.respose.entity.dart';

class AuthResponseModel extends AuthResponseEntity {
 

    AuthResponseModel({
        required super.id,
        required super.email,
        required super.fullName,
        required super.isActive,
        required super.role,
        required super.token,
    });

    factory AuthResponseModel.fromJson(Map<String, dynamic> json) => AuthResponseModel(
        id: json["id"],
        email: json["email"],
        fullName: json["fullName"],
        isActive: json["isActive"],
        role: List<String>.from(json["roles"].map((x) => x)),
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "fullName": fullName,
        "isActive": isActive,
        "roles": List<dynamic>.from(role.map((x) => x)),
        "token": token,
    };

    factory AuthResponseModel.fromEntity(AuthResponseEntity authResponseentity){
      return AuthResponseModel(
       id: authResponseentity.id,
       email: authResponseentity.email,
       fullName: authResponseentity.fullName,
       isActive: authResponseentity.isActive,
       role: authResponseentity.role,
       token: authResponseentity.token,

      );
    }
}
