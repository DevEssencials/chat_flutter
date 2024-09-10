import 'package:barna_chat/login_cadastro/domain/entities/user.dart';

class UserModel extends User {
  UserModel({required super.senha, required super.email, required super.vulgo});

  factory UserModel.fromFirebase(User firebaseUser) {
    return UserModel(senha: firebaseUser.senha, email: firebaseUser.email, vulgo: firebaseUser.vulgo ?? '');
  }
}