abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(String message) : super(message);
}

class GeneralFailure extends Failure {
  GeneralFailure(String message) : super(message);
}