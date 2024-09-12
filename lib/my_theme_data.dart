import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do/app_colors.dart';

class MyThemeData {
  // light mode - dark mode
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColor.primaryColor,
    scaffoldBackgroundColor: AppColor.backgroundLightColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.primaryColor,
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColor.primaryColor,
      unselectedItemColor: AppColor.grayColor,
      showUnselectedLabels: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColor.primaryColor,
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(35),
      //   side: BorderSide(
      //     color: AppColor.whiteColor,
      //     width: 5,
      //   ),
      // ),
      shape: StadiumBorder(
        side: BorderSide(
          color: AppColor.whiteColor,
          width: 5,
        ),
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
        side: BorderSide(
          color: AppColor.blackColor,
          width: 4,
        ),
      ),
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.poppins(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: AppColor.whiteColor,
      ),
      titleMedium: GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: AppColor.blackColor,
      ),
      bodyMedium: GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: AppColor.blackColor,
      ),
      bodySmall: GoogleFonts.inter(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: AppColor.blackColor,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData();
}
