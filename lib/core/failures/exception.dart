import '../networking/error_model/error_message_model.dart';

class ServerException implements Exception {
  final ErrorMessageModel appErrorModel;

  const ServerException({required this.appErrorModel});
}

class LocalException implements Exception {
  final String errorMessage;

  const LocalException({required this.errorMessage});
}
