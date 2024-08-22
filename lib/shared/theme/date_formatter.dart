import 'package:get/utils.dart';
import 'package:intl/intl.dart';

class DateFormatter {
  static const TIME_STAMP = "yyyy-MM-dd'T'HH:mm:ss";
  static const DAY_MONTH_YEAR = 'dd/MM/yyyy';
  static const MONTH_DAY_YEAR = 'MM/dd/yyyy';
  static const HOUR_MINUT_SEC = 'HH:mm:ss';
  static const DATE_TIME_STAMP = "yyyy-MM-dd'T'HH:mm:ss";
  static const DATE_TIME_STAMP2 = "yyyy-MM-dd HH:mm:ss";
  static const DATE_TIM = "yyyy-MM-dd";
  static const HOUR_MINUT = 'HH:mm';
  static const HOUR_MINUT_12 = 'hh:mm a';
  static const DATE_TIME = 'dd/MM/yyyy HH:mm:ss';
  static const DATE_TIME_API = 'MM/dd/yyyy HH:mm:ss';
  static const DATE_TIME_UI = 'EEE ,d MMM  yyyy , hh:mm a';
  static const WORKING_DATE_TIME_UI = 'dd-MM-yyyy HH:mm a';
  static const DATE_UI = 'EEE ,d MMM  yyyy ';
  static const MONTH_NAME_YEAR = 'MMM yyyy ';
  static const TIME_UI = 'hh:mm a';

  static String monthNameYear(DateTime date) {
    return formatDate(date, DATE_UI);
  }

  static String timeFromDate(DateTime date) {
    return formatDate(date, TIME_UI);
  }

  static String dayMonthNameYear(String date) {
    return formatDateWithoutLocal(DateTime.parse(date), TIME_UI);
  }

  static String getCurrentDate({String? local, String? pattern}) {
    /* final hDate = HijriCalendar.now();
    return hDate.toFormat('${hDate.dayWeName} , dd MMMM  yyyy هـ');*/
    final now = DateTime.now();
    return DateFormatter.formatDate(now, pattern ?? DateFormatter.DATE_UI, local: local);
  }

  static String formatDate(DateTime dateTime, String pattern, {String? local}) {
    final langCode = local ?? Get.locale?.languageCode;
    try {
      return DateFormat(pattern, langCode).format(dateTime);
    } catch (e) {
      return '';
    }
  }

  static String formatDateWithoutLocal(DateTime dateTime, String pattern) {
    try {
      return DateFormat(pattern).format(dateTime);
    } catch (e) {
      return '';
    }
  }

  static String repairRequestApiDate(DateTime date) {
    try {
      return formatDate(date, DAY_MONTH_YEAR, local: 'en');
    } catch (e) {
      return '';
    }
  }
  // static String formatDateString(date , String pattern ,String newPattern){
  //   DateTime tempDate = DateFormat(pattern).parse(date);
  //   String newDate = DateFormat(newPattern, 'ar').format(tempDate);
  //   return newDate;
  //
  // }

  static String formatDateString(date, String pattern, String newPattern, {String? local}) {
    final langCode = local ?? Get.locale?.languageCode;

    DateTime tempDate = DateFormat(pattern).parse(date);
    String newDate = DateFormat(newPattern, langCode).format(tempDate);
    return newDate;
  }

  static String repairApiDate(String date) {
    try {
      return formatDateString(date, DAY_MONTH_YEAR, DATE_UI);
    } catch (e) {
      return '';
    }
  }

  static String repairApiDateTime(String date, {String? pattern, String? apiPattern}) {
    try {
      return formatDateString(date, apiPattern ?? TIME_STAMP, pattern ?? DATE_TIME_UI);
    } catch (e) {
      return '';
    }
  }

  static String timeStampToTime(String date) {
    try {
      return formatDateString(date, TIME_STAMP, DATE_UI);
    } catch (e) {
      return '';
    }
  }

  static DateTime dateFromString(date, {String pattern = DATE_TIME_STAMP}) {
    DateTime tempDate = DateFormat(pattern).parse(date);
    return tempDate;
  }

  static DateTime dateFromTimeStamp(date) {
    return dateFromString(date, pattern: TIME_STAMP);
  }

  static int differenceTwoDatesByHours(DateTime start, DateTime end) {
    final milliSec = end.millisecond - start.millisecond;
    var sec = milliSec / 1000;
    var minute = sec / 60;
    var hour = minute / 60;
    return hour.toInt();
  }

  static int differenceTwoDatesByMinutes(DateTime start, DateTime end) {
    final milliSec = end.millisecond - start.millisecond;
    var sec = milliSec / 1000;
    var minute = sec / 60;
    return minute.toInt();
  }

  static int differenceNowByMinutes(DateTime start) {
    DateTime end = DateTime.now();
    final milliSec = end.millisecondsSinceEpoch - start.millisecondsSinceEpoch;
    var sec = milliSec / 1000;
    var minute = sec / 60;
    return minute.toInt();
  }

  static int differenceNowBySecond(DateTime start) {
    DateTime end = DateTime.now();
    final milliSec = end.millisecondsSinceEpoch - start.millisecondsSinceEpoch;
    var sec = milliSec / 1000;
    return sec.toInt();
  }

  // By Harbey
  static String formatDateStringNoPattern(String dateTime, {String? local}) {
    try {
      return DateFormat(DAY_MONTH_YEAR).format(DateTime.parse(dateTime));
    } catch (e) {
      return '';
    }
  }
}
