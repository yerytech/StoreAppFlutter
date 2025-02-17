// Mapper en la capa Data (si decides hacerlo aquí)
import 'package:productsapp/features/data/model/auth_response_model.dart';
import 'package:productsapp/features/domain/entities/auth.respose.entity.dart';

class AuthMapper {
  static AuthResponseEntity toEntity(AuthResponseModel model) {
    return AuthResponseEntity(
      id: model.id,
      email: model.email,
      fullName: model.fullName,
      isActive: model.isActive,
      role: model.roles,
      token: model.token,
    );
  }
}
