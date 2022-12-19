import 'package:quran/domain/enities/error_message.dart';

class ErrorMessageReponse extends ErrorMessageEnities {
  const ErrorMessageReponse(
      {required super.code, required super.status, required super.message});

  factory ErrorMessageReponse.fromJson(Map<String, dynamic> json) {
    return ErrorMessageReponse(
        code: json["code"], status: json["status"], message: json["message"]);
  }
}
