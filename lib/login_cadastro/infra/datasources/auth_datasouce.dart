import 'package:barna_chat/login_cadastro/infra/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthDataSource {
  final FirebaseAuth firebaseAuth;

  FirebaseAuthDataSource(this.firebaseAuth);

  Future<UserModel> login(String email, String password) async {
      await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return UserModel(senha: password, email: email, vulgo: null);
  
    
  }

  Future<UserModel> register(String email, String password) async {
    await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    return UserModel(senha: password, email: email, vulgo: null);
  }
}