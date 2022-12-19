import 'package:flutter/material.dart';
import 'package:quran/presention/resourse/color_manager.dart';
import 'package:quran/presention/resourse/valuse_manager.dart';

class DotIndactor extends StatelessWidget {
  final bool isActive;
  const DotIndactor({
    this.isActive = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: ValuseManager.milliseconds),
      height: isActive == true ? ValuseManager.s12 : ValuseManager.s4,
      width: ValuseManager.s4,
      decoration: BoxDecoration(
          color: isActive == true
              ? ColorManager.green
              : ColorManager.green.withOpacity(ValuseManager.s0_4),
          borderRadius:
              const BorderRadius.all(Radius.circular(ValuseManager.s15))),
    );
  }
}
