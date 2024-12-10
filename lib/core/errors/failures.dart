abstract class Failure {
  final String message;
  const Failure(this.message);
}

class ServerFailure extends Failure {
  const ServerFailure(super.message);
}

class CacheFailure extends Failure {
  //const CacheFailure(String message) : super(message);
  const CacheFailure(super.message);
}