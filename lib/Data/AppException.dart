class AppException implements Exception {
  final String? _message;
  final String? _prefix;
  AppException([this._message, this._prefix]);

  @override
  String toString() {
    return '$_prefix $_message';
  }
}

class FetchDataException extends AppException {
  FetchDataException(String message)
      : super(message, 'Error during Communication');
}

class BadRequestException extends AppException {
  BadRequestException(String message) : super(message, 'Invalid Request');
}

class RequestTimeOutException extends AppException {
  RequestTimeOutException(String message) : super(message, 'Request time out');
}

class UnAuthuriseException extends AppException {
  UnAuthuriseException(String message) : super(message, 'UnAuthurise Request');
}

class InvalidInputException extends AppException {
  InvalidInputException(String message)
      : super(message, 'Invalid input Request');
}
