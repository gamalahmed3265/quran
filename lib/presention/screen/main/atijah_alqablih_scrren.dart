import 'package:flutter/material.dart';
import 'package:quran/presention/resourse/string_manager.dart';

//اتجاه القبله
class AtijahAlqablihScreen extends StatelessWidget {
  const AtijahAlqablihScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(AppString.aijahAlqablih),
    );
  }
}
