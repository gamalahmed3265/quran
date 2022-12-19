import 'package:flutter/material.dart';
import 'package:quran/presention/resourse/string_manager.dart';

//مواقيت الصلاه
class MawaqitAlsalahScreen extends StatelessWidget {
  const MawaqitAlsalahScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(AppString.mawaqitAlsalah));
  }
}
