import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //Define el color primario de la aplicacion
    primaryColor: primaryColor,

    //Define el diseño de los appbars
    appBarTheme: const AppBarTheme(color: primaryColor, elevation: 10),

    //Define el diseño de todo los botones
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(backgroundColor: primaryColor)),

    //Define le diseño de los floating action button
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryColor, elevation: 10),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          shape: const StadiumBorder(),
          elevation: 10),
    ),

    //Estilo de los Inputs
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primaryColor),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
    ),
  );
}
