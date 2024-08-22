import 'package:flutter/foundation.dart';
import 'package:mime/mime.dart';

extension ListEX<T> on List<T> {
  List<T> replace(T old, T newItem, [int? forceIndex]) {
    int index = indexOf(old);
    if (forceIndex != null) {
      this
        ..removeAt(index)
        ..insert(forceIndex, newItem);
    } else if (index != -1) {
      this
        ..removeAt(index)
        ..insert(index, newItem);
    } else {
      this
        ..removeAt(index)
        ..insert(0, newItem);
    }
    return this;
  }

  List<T> replaceWhere(bool Function(T element) where, T newItem) {
    for (int i = 0; i < length; i++) {
      if (where(this[i])) {
        this
          ..removeAt(i)
          ..insert(i, newItem);
      }
    }
    return this;
  }

  T? get firstOrNull {
    if (isEmpty) return null;
    return first;
  }

  ///
  void sort2(T Function(T a, T b) sor) {
    List<T> n = [];
    for (int i = 0; i < length; i++) {
      if (i < length - 1) {
        T t = sor(this[i], this[i + 1]);
        if (t == 0) return;
        if (t == 1) n.insert(i, this[i]);
        if (t == -1) n.insert(i, this[i]);
      }
    }
    debugPrint('================= $n : ');
  }

  List<T> replaceFirst(bool Function(T element) where, T newItem) {
    for (int i = 0; i < length; i++) {
      if (where(this[i])) {
        this
          ..removeAt(i)
          ..insert(i, newItem);
        break;
      }
    }
    return this;
  }
}

extension StringX on String {
  String get capitalize => StringEx.capitalize(this);
  bool get isImage => StringEx.isImage(this);
}

extension DurationX on Duration {
  String get toStrTime {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    return "${twoDigits(inMinutes.remainder(60))}:${twoDigits(inSeconds.remainder(60))}";
  }
}

class StringEx {
  static String capitalize(String value) {
    if (isNull(value)) return '';
    if (isBlank(value)!) return value;
    return value.split(' ').map(capitalizeFirst).join(' ');
  }

  static String? capitalizeFirst(String s) {
    if (isNull(s)) return null;
    if (isBlank(s)!) return s;
    return s[0].toUpperCase() + s.substring(1).toLowerCase();
  }

  static bool isImage(String path) {
    final mimeType = lookupMimeType(path);
    return mimeType?.startsWith('image/') ?? false;
  }

  static bool isNull(dynamic value) => value == null;
  static bool? isBlank(dynamic value) => _isEmpty(value);

  static bool? _isEmpty(dynamic value) {
    if (value is String) {
      return value.toString().trim().isEmpty;
    }
    if (value is Iterable || value is Map) {
      return value.isEmpty as bool?;
    }
    return false;
  }
}
