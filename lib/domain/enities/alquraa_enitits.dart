import 'package:equatable/equatable.dart';

// class BaseAlquraaEnities extends Equatable {
//   final List<AlquraaEnities> alquraaEnities;

//   const BaseAlquraaEnities({required this.alquraaEnities});

//   @override
//   List<Object?> get props => [alquraaEnities];
// }

class AlquraaEnities extends Equatable {
  final String identifier;
  final String language;
  final String name;
  final String englishName;
  final String format;
  final String type;

  const AlquraaEnities({
    required this.identifier,
    required this.language,
    required this.name,
    required this.englishName,
    required this.format,
    required this.type,
  });

  @override
  List<Object?> get props =>
      [identifier, language, name, englishName, format, type];
}
