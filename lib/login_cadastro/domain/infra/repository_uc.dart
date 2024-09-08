

import 'package:barna_chat/login_cadastro/domain/entities/user.dart';
import 'package:barna_chat/login_cadastro/util/failure_server.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository{
  Future<Either<Failure, User>> login(String email, String password);
  Future<Either<Failure, User>> register(String email, String password);
}