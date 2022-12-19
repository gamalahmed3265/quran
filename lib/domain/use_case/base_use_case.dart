import 'package:dartz/dartz.dart';
import 'package:quran/domain/enities/error_message.dart';

abstract class BaseUseCase<In, Out> {
  Future<Either<ErrorMessageEnities, Out>> execute(In input);
}
