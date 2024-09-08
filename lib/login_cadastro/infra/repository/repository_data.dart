

import 'package:barna_chat/login_cadastro/domain/entities/user.dart';
import 'package:barna_chat/login_cadastro/domain/infra/repository_uc.dart';
import 'package:barna_chat/login_cadastro/infra/datasources/auth_datasouce.dart';
import 'package:dartz/dartz.dart';

import '../../util/failure_server.dart';

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuthDataSource firebaseDataSource;
  AuthRepositoryImpl(this.firebaseDataSource);

  @override
  Future<Either<Failure, User>> login(String email, String password) async {
    try{
      final userModel = await firebaseDataSource.login(email, password);
      return right(userModel);
    }catch (e){
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, User>> register(String email, String password) async {
    try {
      final userModel = await firebaseDataSource.register(email, password);
      return Right(userModel);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}

