import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class KColors {
  static ColorsGetter of(BuildContext context) {
    return ColorsGetter.of(context);
  }

  //Light
  static const Color backgroundL = Colors.white;
  static const Color elevatedBoxL = Color(0xFFffffff);
  static const Color actionBTNL = Color(0xFF05B646);
  static const Color fabL = Color(0xFF45C0BE);
  static const Color iconL = Color(0xFFffffff);
  static const Color errorL = Color(0xFFBE0202);
  static const Color shadowL = Color(0x20000000);
  static const Color cursorL = Color(0xFFBE0202);
  static const Color dividerD = Color(0xFF272727);
  static const Color accentColorL = Color(0xffFF653E);
  static const Color accentColorD = Color(0xffFF653E);
  static const Color textFieldL = Color(0xffE6E9EA);
  static const Color textL = Color(0xff6B6C70);
}

class ColorsGetter extends KColors {
  // ignore: unused_field
  static BuildContext? _context;
  static ColorsGetter? _instance;
  ColorsGetter._internal() {
    _instance = this;
  }

  static bool isLight = true;

  static ColorsGetter of(BuildContext context) {
    _context = context;

    isLight = !context.isDarkMode;

    return _instance ?? ColorsGetter._internal();
  }

  static ColorsGetter get current {
    return _instance ?? ColorsGetter._internal();
  }

  //Getters
  Color get error {
    return KColors.errorL;
  }

  Color get textField {
    return KColors.accentColorD.withOpacity(.1);
  }

  Color get background {
    return KColors.backgroundL;
  }

  Color get elevatedBox {
    return KColors.elevatedBoxL;
  }

  Color get shadow {
    return KColors.shadowL;
  }

  Color get cursor {
    return KColors.cursorL;
  }

  Color get thumbColor {
    return Colors.white;
  }

  Color get activeIcons {
    return KColors.iconL;
  }

  Color get fabBackground {
    return KColors.fabL;
  }

  Color get accentColor {
    return KColors.accentColorL;
  }
}
