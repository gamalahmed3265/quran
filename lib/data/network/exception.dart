import 'package:quran/data/respose/error_message_response.dart';

class ServerException implements Exception {
  final ErrorMessageReponse failure;
  const ServerException({required this.failure});
}

class LocalException implements Exception {
  final String message;
  const LocalException({required this.message});
}
