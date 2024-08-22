import 'package:flutter/material.dart';
import 'package:the_business_square/shared/cache/storage.dart';
import 'app.dart';
import 'di.dart';

void main() async {
  await Di.init();
  print(KStorage.i.getToken);
  print("Token");
  runApp(const MyApp());
}
