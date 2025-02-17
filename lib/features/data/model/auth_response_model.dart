import 'dart:convert';

AuthResponseModel authResponseFromJson(String str) => AuthResponseModel.fromJson(json.decode(str));

String authResponseToJson(AuthResponseModel data) => json.encode(data.toJson());

class AuthResponseModel {
    String id;
    String email;
    String fullName;
    bool isActive;
    List<String> roles;
    String token;

    AuthResponseModel({
        required this.id,
        required this.email,
        required this.fullName,
        required this.isActive,
        required this.roles,
        required this.token,
    });

    factory AuthResponseModel.fromJson(Map<String, dynamic> json) => AuthResponseModel(
        id: json["id"],
        email: json["email"],
        fullName: json["fullName"],
        isActive: json["isActive"],
        roles: List<String>.from(json["roles"].map((x) => x)),
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "fullName": fullName,
        "isActive": isActive,
        "roles": List<dynamic>.from(roles.map((x) => x)),
        "token": token,
    };
}
