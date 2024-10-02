abstract class Failure {
  final String errorMessage;
  Failure({
    required this.errorMessage,
});
}
class ApiFailure extends Failure{
  ApiFailure({required super.errorMessage});
}