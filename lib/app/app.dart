import 'package:flutter/material.dart';
import 'package:quran/presention/resourse/router_manager.dart';
import 'package:quran/presention/resourse/theme_manager.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyApp extends StatefulWidget {
  MyApp._internal(); // private named constructor
  int appState = 0;
  static final MyApp instance =
      MyApp._internal(); // single instance -- singleton

  factory MyApp() => instance; // factory for the class instance

  @override
  _MyAppState createState() => _MyAppState();

  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.setLocale(newLocale);
  }
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;

  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  // @override
  // void didChangeDependencies() {
  //   getLocale().then((locale) => {setLocale(locale)});
  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Qutan App",
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: isLight ? ThemeMode.light : ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      // home: const SplashScreen(),
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: RouteManager.splsh,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: _locale,
    );
  }
}
