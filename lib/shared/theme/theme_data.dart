import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';
import 'helper.dart';

class KThemeData {
  static SystemUiOverlayStyle get overlayStyle {
    return _lightOverLay;
  }

  static ThemeData get light {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: KColors.backgroundL,
      appBarTheme: const AppBarTheme(
        color: KColors.backgroundL,
        systemOverlayStyle: _lightOverLay,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: KColors.accentColorL),
      ),
      shadowColor: KColors.shadowL,
      inputDecorationTheme: inputDecorationTheme(color: const Color(0xff002036)),
      iconTheme: const IconThemeData(color: KColors.accentColorL),
      elevatedButtonTheme: elevatedBtnTheme(shadow: KColors.shadowL, background: KColors.elevatedBoxL),
    );
  }

  static ElevatedButtonThemeData elevatedBtnTheme({required Color shadow, required Color background}) {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        alignment: Alignment.center,
        shadowColor: MaterialStateProperty.all<Color>(shadow),
        elevation: MaterialStateProperty.all<double>(5.0),
        backgroundColor: MaterialStateProperty.all<Color>(background),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(KHelper.btnRadius),
          ),
        ),
      ),
    );
  }

  static InputDecorationTheme inputDecorationTheme({required Color color}) {
    return InputDecorationTheme(
      border: outlineInputBorder(color: color),
      disabledBorder: outlineInputBorder(color: color),
      errorBorder: outlineInputBorder(color: color),
      focusedErrorBorder: outlineInputBorder(color: color),
      enabledBorder: outlineInputBorder(color: color),
      focusedBorder: outlineInputBorder(color: color),
    );
  }

  static InputDecoration inputDecoration({required Color color}) => InputDecoration(
        border: outlineInputBorder(color: color),
        disabledBorder: outlineInputBorder(color: color),
        errorBorder: outlineInputBorder(color: color),
        focusedErrorBorder: outlineInputBorder(color: color),
        enabledBorder: outlineInputBorder(color: color),
        focusedBorder: outlineInputBorder(color: color),
      );

  static OutlineInputBorder outlineInputBorder({required Color color}) => OutlineInputBorder(
        borderSide: BorderSide(width: .5, color: color),
        borderRadius: BorderRadius.circular(KHelper.btnRadius),
      );

  static OutlineInputBorder get filledInputBorder => OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(KHelper.btnRadius),
      );

  static const SystemUiOverlayStyle _lightOverLay = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarDividerColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.dark,
  );
}
