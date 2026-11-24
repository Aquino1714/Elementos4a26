// El thema define colores, estilos y fuentes para la app.
// ------------------ Constante de tema ----------------
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // ------------ Definicion para tema claro ---------------------
  static const primaryColor = Color.fromARGB(255, 48, 48, 49);
  static const secondaryColor = Color.fromARGB(183, 0, 0, 0);
  static const backColor = Color.fromARGB(255, 185, 254, 255);
  static const accentColor = Color.fromARGB(255, 246, 198, 61);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: const Color.fromARGB(255, 196, 199, 199),
    appBarTheme: AppBarTheme(
      color: const Color.fromARGB(249, 20, 12, 40),
      titleTextStyle: GoogleFonts.getFont(
        'Inter',
        color: Colors.white,
        fontSize: 28.5,
        fontWeight: FontWeight.bold,
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(primaryColor),
        foregroundColor: WidgetStateProperty.all(accentColor),
        textStyle: WidgetStateProperty.all(
          GoogleFonts.pacifico(fontSize: 16.0),
        ),
      ),
    ),

    textTheme: TextTheme(
      // ----------- Estilo para titulas grandes -------------------
      headlineLarge: GoogleFonts.getFont(
        'Firjar',
        color: primaryColor,
        fontSize: 26.5,
        fontWeight: FontWeight.w500,
      ),
      // ------------- Estilos de texto para titulos pequeños --------------
      bodySmall: GoogleFonts.getFont(
        'Noto Sans Japanese',
        color: secondaryColor,
        fontSize: 14.5,
      ),
    ),
  );
}
