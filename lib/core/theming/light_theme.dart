import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/styles_manager.dart';
import 'app_color.dart';

ThemeData lightTheme() {
  return ThemeData(
    // main colors
    brightness: Brightness.light,
    primaryColor: ColorManager.primaryColor,
    primaryColorLight: ColorManager.lightPrimaryColor,
    primaryColorDark: ColorManager.darkPrimaryColor,

    scaffoldBackgroundColor: ColorManager.backgroundColor,

    disabledColor: ColorManager.disabledColor,
    hintColor: ColorManager.secondaryColor,
    splashColor: ColorManager.lightPrimaryColor, // ripple effect color
    dividerColor: ColorManager.darkGrey.withOpacity(0.5),
    cardColor: ColorManager.greyDisplayTextDark,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: ColorManager.lightPrimaryColor,
      refreshBackgroundColor: ColorManager.secondaryColor,
    ),

    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: ColorManager.lightPrimaryColor,
      primary: ColorManager.primaryColor,
      background: ColorManager.backgroundColor,
      error: ColorManager.error,
    ),
    //  card view theme
    cardTheme: CardTheme(
      color: ColorManager.secondaryColor,
      shadowColor: ColorManager.grey,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),

    // app bar theme
    appBarTheme: AppBarTheme(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: ColorManager.backgroundColor,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
      centerTitle: true,
      color: Colors.transparent,
      elevation: 0,
      shadowColor: Colors.transparent,
      foregroundColor: ColorManager.secondaryColorDark,
      titleTextStyle:
          getRegularStyle(color: ColorManager.lightPrimaryColor, fontSize: 16),
    ),

    //  button theme
    buttonTheme: const ButtonThemeData(
      shape: StadiumBorder(),
      disabledColor: ColorManager.secondaryColorDark,
      buttonColor: ColorManager.primaryColor,
      splashColor: ColorManager.lightPrimaryColor,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 60),
        textStyle:
            getRegularStyle(color: ColorManager.secondaryColor, fontSize: 17),
        backgroundColor: ColorManager.backgroundColor,
        disabledBackgroundColor: ColorManager.secondaryColorDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: ColorManager.backgroundColor),
        ),
      ),
    ),

    //  text theme
    textTheme: TextTheme(
      // Bold ---------------------------
      labelLarge: getBoldStyle(
        color: ColorManager.textColor,
        fontSize: 16,
      ),
      labelMedium: getBoldStyle(
        color: ColorManager.textColor,
        fontSize: 14,
      ),
      labelSmall: getBoldStyle(
        color: ColorManager.textColor,
        fontSize: 12,
      ),
      // Semibold ---------------------------
      titleLarge: getSemiBoldStyle(
        color: ColorManager.textColor,
        fontSize: 20,
      ),
      titleMedium: getSemiBoldStyle(
        color: ColorManager.textColor,
        fontSize: 16,
      ),
      titleSmall: getSemiBoldStyle(
        color: ColorManager.textColor,
        fontSize: 14,
      ),
      // Medium ---------------------------
      displayLarge: getMediumStyle(
        color: ColorManager.textColor,
        fontSize: 16,
      ),
      displayMedium: getMediumStyle(
        color: ColorManager.textColor,
        fontSize: 14,
      ),
      displaySmall: getMediumStyle(
        color: ColorManager.textColor,
        fontSize: 12,
      ),
      // Regular --------------------------
      bodyLarge: getRegularStyle(
        color: ColorManager.textColor,
        fontSize: 16,
      ),
      bodyMedium: getRegularStyle(
        color: ColorManager.textColor,
        fontSize: 14,
      ),
      bodySmall: getRegularStyle(
        color: ColorManager.textColor,
        fontSize: 12,
      ),
      // -----------------------
      headlineSmall: getRegularStyle(
        color: ColorManager.grey2,
        fontSize: 12,
      ),
      headlineMedium: getLightStyle(
        color: ColorManager.secondaryColor.withOpacity(.8),
        fontSize: 16,
      ),
      headlineLarge: getRegularStyle(
        color: ColorManager.secondaryColor,
        fontSize: 20,
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      prefixIconColor: ColorManager.grey,
      contentPadding: const EdgeInsets.all(20),
      floatingLabelStyle:
          getMediumStyle(color: ColorManager.error, fontSize: 14),
      counterStyle: getMediumStyle(color: Colors.green, fontSize: 14),
      hintStyle: getMediumStyle(color: ColorManager.hintColor, fontSize: 14),
      labelStyle: getMediumStyle(color: ColorManager.labelColor, fontSize: 14),
      errorStyle: getMediumStyle(color: ColorManager.error),
      helperStyle: getMediumStyle(color: Colors.amber, fontSize: 14),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey, width: 1.5),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey1, width: 1.5),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primaryColor, width: 1.5),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error, width: 1.5),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error, width: 1.5),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
    ),
  );
}
