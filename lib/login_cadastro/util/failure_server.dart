

// Classe base para representar falhas
abstract class Failure {
  final String message;

  Failure({this.message = 'An error occurred'});

  @override
  String toString() => message;
}

// Falha específica do servidor
class ServerFailure extends Failure {
  ServerFailure({String message = 'Server failure'}) : super(message: message);
}

// Exemplo de outras possíveis falhas (pode expandir conforme necessário)
class NetworkFailure extends Failure {
  NetworkFailure({String message = 'Network failure'}) : super(message: message);
}

class CacheFailure extends Failure {
  CacheFailure({String message = 'Cache failure'}) : super(message: message);
}
