import 'package:equatable/equatable.dart';

abstract class ErrorMessageEnities extends Equatable {
  final int code;
  final String status;
  final String message;
  const ErrorMessageEnities({
    required this.code,
    required this.status,
    required this.message,
  });

  @override
  List<Object?> get props => [code, status, message];
}
