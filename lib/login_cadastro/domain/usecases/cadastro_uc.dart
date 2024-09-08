
import 'package:barna_chat/login_cadastro/domain/entities/user.dart';
import 'package:barna_chat/login_cadastro/domain/infra/repository_uc.dart';
import 'package:barna_chat/login_cadastro/util/failure_server.dart';
import 'package:barna_chat/login_cadastro/util/model_use_case.dart';
import 'package:dartz/dartz.dart';

class RegisterUseCase implements UseCase<User, LoginParams>{
  final AuthRepository authRepository;
  RegisterUseCase(this.authRepository);

  @override
  Future<Either<Failure, User>> call(LoginParams params) async {
    return authRepository.login(params.email, params.password);
  }

}

class RegisterParams {
  final String email;
  final String password;

  RegisterParams({required this.email, required this.password});
}