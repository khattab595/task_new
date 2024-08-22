import 'package:flutter/material.dart';

Future customAlertDialog({required BuildContext context, required Widget body, required Color colorBorder}) {
  return showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      //scrollable: true,
      elevation: 0,
      insetPadding: EdgeInsets.all(16),
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
      backgroundColor: Colors.white,
      content: body,
    ),
  );
}
