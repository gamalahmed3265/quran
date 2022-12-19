import 'package:flutter/material.dart';
import 'package:quran/presention/resourse/color_manager.dart';

bool isLight = false;

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: "Cairo",
    // primaryColor: const Color.fromRGBO(50, 126, 90, 1),
    primarySwatch: Colors.green,
    // elevatedButtonTheme:const ElevatedButtonThemeData(
    //   style: ButtonStyle(backgroundColor: ColorManager.green)
    // ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        unselectedItemColor: ColorManager.grey,
        selectedItemColor: ColorManager.green),
    listTileTheme: const ListTileThemeData(
      // selectedTileColor: ColorManager.black26,
      // selectedColor: ColorManager.white,
      minLeadingWidth: 20,
    ),
    scaffoldBackgroundColor: ColorManager.white,
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
          color: ColorManager.black,
        ),
        titleTextStyle: TextStyle(
          color: ColorManager.black,
        ),
        elevation: 0,
        backgroundColor: ColorManager.white),
    tabBarTheme: const TabBarTheme(
        labelStyle: TextStyle(fontSize: 20.0, color: Colors.white),
        indicatorSize: TabBarIndicatorSize.label,
        unselectedLabelColor: Color.fromARGB(215, 255, 255, 255),
        labelColor: Colors.white,
        unselectedLabelStyle: TextStyle(fontSize: 15),
        indicator: BoxDecoration()));

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: "Cairo",
  // primaryColor: const Color.fromRGBO(50, 126, 90, 1),
  primarySwatch: Colors.green,
  // elevatedButtonTheme:const ElevatedButtonThemeData(
  //   style: ButtonStyle(backgroundColor: ColorManager.green)
  // ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      unselectedItemColor: ColorManager.grey,
      selectedItemColor: ColorManager.white),
  listTileTheme: const ListTileThemeData(
    selectedTileColor: ColorManager.black,
    selectedColor: ColorManager.white,
    minLeadingWidth: 20,
  ),
  // appBarTheme: const AppBarTheme(
  //     iconTheme: IconThemeData(
  //       color: ColorManager.black,
  //     ),
  //     titleTextStyle: TextStyle(
  //       color: ColorManager.black,
  //     ),
  // elevation: 0,
  // backgroundColor: ColorManager.white),
  // tabBarTheme: const TabBarTheme(
  //     labelStyle: TextStyle(fontSize: 20.0, color: Colors.white),
  //     indicatorSize: TabBarIndicatorSize.label,
  //     unselectedLabelColor: Color.fromARGB(215, 255, 255, 255),
  //     labelColor: Colors.white,
  //     unselectedLabelStyle: TextStyle(fontSize: 15),
  //     indicator: BoxDecoration())
);
