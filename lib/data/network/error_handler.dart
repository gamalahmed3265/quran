import 'package:quran/domain/enities/error_message.dart';

class ServerErrorHandle extends ErrorMessageEnities {
  const ServerErrorHandle(
      {required super.code, required super.status, required super.message});
}

class LocalErrorHandle extends ErrorMessageEnities {
  const LocalErrorHandle(
      {required super.code, required super.status, required super.message});
}
