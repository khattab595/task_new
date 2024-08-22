import 'package:flutter/material.dart';

class KTextStyle {
  static BuildContext? _context;
  static KTextStyle? _instance;
  KTextStyle._internal() {
    _instance = this;
  }
  static KTextStyle of(BuildContext context) {
    _context = context;
    return _instance ?? KTextStyle._internal();
  }

  static const String? fontFamily = null;

  //Light
  static const Color mainL = Color(0xFF161616);

  //Dark
  static const Color mainD = Color(0xFFFFFFFF);

  //Getters
  TextStyle get appBar {
    return TextStyle(
      color: Theme.of(_context!).brightness == Brightness.light ? Colors.black : Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w600,
      fontFamily: fontFamily,
    );
  }

  TextStyle get reAppBar {
    return TextStyle(
      color: Theme.of(_context!).brightness != Brightness.light ? Colors.black : Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontFamily: fontFamily,
    );
  }

  TextStyle get langSwitch {
    return TextStyle(
      color: Theme.of(_context!).brightness == Brightness.light ? mainL : mainD,
      fontSize: 15,
      fontFamily: fontFamily,
    );
  }

  TextStyle get body {
    return TextStyle(
      color: Theme.of(_context!).brightness == Brightness.light ? mainL : mainD,
      fontSize: 15,
      fontFamily: fontFamily,
    );
  }

  TextStyle get reBody {
    return TextStyle(
      color: Theme.of(_context!).brightness == Brightness.dark ? mainD : mainL,
      fontSize: 15,
      fontFamily: fontFamily,
    );
  }

  TextStyle get body2 {
    return TextStyle(
      color: Theme.of(_context!).brightness == Brightness.light ? mainL : mainD,
      fontSize: 12.5,
      fontFamily: fontFamily,
    );
  }

  TextStyle get bodyLight2 {
    return TextStyle(
      color: Theme.of(_context!).brightness == Brightness.light ? mainD : mainL,
      fontSize: 12.5,
      fontFamily: fontFamily,
    );
  }

  TextStyle get body3 {
    return TextStyle(
      color: Theme.of(_context!).brightness == Brightness.light ? mainL : mainD,
      fontSize: 12.5,
      fontFamily: fontFamily,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle get error {
    return const TextStyle(color: Colors.red, fontSize: 15, fontFamily: fontFamily);
  }

  TextStyle get rawBtn {
    return TextStyle(
        color: Theme.of(_context!).brightness == Brightness.dark ? mainL : mainD, fontSize: 16, fontFamily: fontFamily, fontWeight: FontWeight.bold);
  }

  TextStyle get hint {
    return TextStyle(
      color: Theme.of(_context!).brightness == Brightness.light ? mainL.withOpacity(.5) : mainD.withOpacity(.5),
      fontSize: 16,
      fontFamily: fontFamily,
      fontWeight: FontWeight.normal,
    );
  }

  TextStyle get hint2 {
    return TextStyle(
      color: Theme.of(_context!).brightness == Brightness.light ? mainL.withOpacity(.5) : mainD.withOpacity(.5),
      fontSize: 12,
      fontFamily: fontFamily,
    );
  }

  TextStyle get rehint {
    return TextStyle(
      color: Theme.of(_context!).brightness == Brightness.dark ? mainL.withOpacity(.7) : mainD.withOpacity(.6),
      fontSize: 16,
      fontFamily: fontFamily,
    );
  }

  TextStyle get title {
    return TextStyle(
      color: Theme.of(_context!).brightness == Brightness.light ? mainL : mainD,
      fontSize: 16,
      fontFamily: fontFamily,
    );
  }

  TextStyle get btnTitle {
    return TextStyle(
      color: Colors.black,
      fontSize: 17,
      fontFamily: fontFamily,
    );
  }

  TextStyle get title2 {
    return TextStyle(
      color: Theme.of(_context!).brightness == Brightness.light ? mainL : mainD,
      fontSize: 16,
      fontFamily: fontFamily,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle get reTitle {
    return TextStyle(
      color: Theme.of(_context!).brightness == Brightness.dark ? mainL : mainD,
      fontSize: 16,
      fontFamily: fontFamily,
    );
  }

  TextStyle get textBtn {
    return const TextStyle(
      color: Color(0xFF629CFF),
      fontSize: 16,
      fontFamily: fontFamily,
    );
  }

  TextStyle get textTitle {
    return const TextStyle(
      color: Color(0xFF629CFF),
      fontSize: 18,
      fontWeight: FontWeight.w600,
      fontFamily: fontFamily,
    );
  }
}
