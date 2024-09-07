import 'package:barna_chat/login_cadastro/domain/entities/user.dart';

class UserModel extends User {
  UserModel({required String senha, required String email, required String? vulgo}) : super(senha: senha, email: email, vulgo: vulgo);

  factory UserModel.fromFirebase(User firebaseUser) {
    return UserModel(senha: firebaseUser.senha, email: firebaseUser.email, vulgo: firebaseUser.vulgo ?? '');
  }
}