// core/helper_functions/theme.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/core/utils/app_colors%20(1).dart';

ThemeData getAppTheme(){

  return ThemeData(
    scaffoldBackgroundColor: AppColors.background,
    textTheme: TextTheme(
      displayLarge: GoogleFonts.lato(
        color: AppColors.white,
        fontWeight: FontWeight.bold,
        fontSize: 32
      ),
      displayMedium: GoogleFonts.lato(
        color: AppColors.white,
       // fontWeight: FontWeight.w400
      ),
      displaySmall: 
       GoogleFonts.lato(
        color: AppColors.white,
       // fontWeight: FontWeight.w400
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(4)
        )
      )
    )
  );

}



ThemeData getAppDarkTheme(){

  return ThemeData(
    scaffoldBackgroundColor: AppColors.background,
    textTheme: TextTheme(
      displayLarge: GoogleFonts.lato(
        color: AppColors.white,
        fontWeight: FontWeight.bold,
        fontSize: 32
      ),
      displayMedium: GoogleFonts.lato(
        color: AppColors.white,
       // fontWeight: FontWeight.w400
      ),
      displaySmall: 
       GoogleFonts.lato(
        color: AppColors.white,
       // fontWeight: FontWeight.w400
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(4)
        )
      )
    )
  );

}


