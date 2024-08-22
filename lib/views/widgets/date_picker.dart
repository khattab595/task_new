import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SfDatePicker {
  static Future<String?> showDateTimePickerHG(
    BuildContext context, {
    required DateTime initial,
    required DateTime start,
    required bool hasTime,
    required DateTime end,
  }) async {
    if (hasTime) {
      final date = await showDatePicker(context: context, initialDate: initial, firstDate: start, lastDate: end);

      String? formattedDate = DateFormat('yyyy-MM-dd').format(date ?? initial);
      dateController.text = formattedDate;
      if (hasTime) {
        final localizations = MaterialLocalizations.of(context);
        final pickedTime = await timePicker(context);
        if (pickedTime != null) {
          final formattedTimeOfDay = localizations.formatTimeOfDay(pickedTime, alwaysUse24HourFormat: true);
          dateController.text = '$formattedDate $formattedTimeOfDay';
        }
      }
      return dateController.text;
    }
    return null;
  }

  static TextEditingController dateController = TextEditingController();

  static Future<TimeOfDay?> timePicker(context) async {
    TimeOfDay? pickedTime = await showTimePicker(context: context, initialTime: TimeOfDay.now());
    return pickedTime;
  }

  static Future<String?> timePickerData(context) async {
    final localizations = MaterialLocalizations.of(context);

    TimeOfDay? pickedTime = await showTimePicker(context: context, initialTime: TimeOfDay.now());
    String? time;

    if (pickedTime != null) {
      time = localizations.formatTimeOfDay(pickedTime, alwaysUse24HourFormat: true);
    }
    print("------------------");
    print(time);
    return time;
  }

  static showDateTime(BuildContext context, DateTime initialDate) async {
    return (await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime(DateTime.now().year + 100),
        )) ??
        initialDate;
  }
}
