import 'package:flutter/material.dart';
import 'package:quran/presention/resourse/string_manager.dart';

//المفضله
class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(AppString.favorit),
    );
  }
}
