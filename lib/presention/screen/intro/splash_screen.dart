import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quran/presention/resourse/router_manager.dart';
import 'package:quran/presention/resourse/valuse_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;
  goHomeScreen() {
    _timer = Timer(const Duration(seconds: ValuseManager.seconds), () {
      Navigator.of(context).pushReplacementNamed(RouteManager.onBording);
    });
  }

  @override
  void initState() {
    super.initState();
    goHomeScreen();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Icon(Icons.start)),
    );
  }
}
