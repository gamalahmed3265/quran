import 'package:flutter/material.dart';
import 'package:quran/presention/resourse/valuse_manager.dart';

class OnbordingConent extends StatelessWidget {
  final String image;
  final String title;
  final String descriotion;
  const OnbordingConent(
      {Key? key,
      required this.image,
      required this.title,
      required this.descriotion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          image,
          height: ValuseManager.s250,
        ),
        const Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: ValuseManager.s20,
        ),
        Text(
          descriotion,
          textAlign: TextAlign.center,
        ),
        const Spacer()
      ],
    );
  }
}
