// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:the_business_square/chat/view/conversation_list.dart';

import '../../../shared/cache/storage.dart';
import '../../../shared/theme/assets.dart';
import '../../../shared/theme/colors.dart';
import '../../../views/user/home/home_view.dart';
import '../../../views/user/notifications/notifications_view.dart';
import '../../../views/user/profile/profile_view.dart';

@immutable
class SettingsState {}

class NewsBottomNavInitial extends SettingsState {}

class SettingsBloc extends Cubit<SettingsState> {
  SettingsBloc() : super(SettingsState());

  final GetStorage storage = GetStorage();
  late ThemeMode _themeMode;
  ThemeMode get themeMode => _themeMode;
  late Locale _locale;
  Locale get locale => _locale;

  static SettingsBloc of(BuildContext context) {
    return BlocProvider.of<SettingsBloc>(context);
  }

  void loadSettings() {
    _themeMode = _readTheme();
    _locale = _readLocale();
    emit(SettingsState());
  }

  void updateThemeMode() {
    if (_themeMode == ThemeMode.dark) {
      _themeMode = ThemeMode.light;
    } else if (_themeMode == ThemeMode.light) {
      _themeMode = ThemeMode.dark;
    } else if (_themeMode == ThemeMode.system && Get.theme.brightness == Brightness.dark) {
      _themeMode = ThemeMode.light;
    } else if (_themeMode == ThemeMode.system && Get.theme.brightness == Brightness.light) {
      _themeMode = ThemeMode.dark;
    }
    storage.write(KStorageKeys.themeMode, _themeMode.toString());
    emit(SettingsState());
  }

  ThemeMode _readTheme() {
    if (storage.read(KStorageKeys.themeMode) == null) {
      return ThemeMode.system;
    } else if (storage.read(KStorageKeys.themeMode) == ThemeMode.dark.toString()) {
      return ThemeMode.dark;
    } else if (storage.read(KStorageKeys.themeMode) == ThemeMode.light.toString()) {
      return ThemeMode.light;
    } else {
      return ThemeMode.system;
    }
  }

  Locale _readLocale() {
    if (storage.read(KStorageKeys.locale) == null) {
      return const Locale('ar');
    } else {
      return Locale(storage.read(KStorageKeys.locale));
    }
  }

  void updateLocale() {
    _locale.languageCode == 'en' ? _locale = const Locale('ar') : _locale = const Locale('en');
    emit(SettingsState());
    Get.updateLocale(_locale);
    storage.write(KStorageKeys.locale, _locale.languageCode);
  }

  int currentIndex = 0;
  List<BottomNavigationBarItem> bottomItem = [
    BottomNavigationBarItem(
      icon: SvgPicture.asset(KAssets.home, color: Colors.grey),
      activeIcon: SvgPicture.asset(KAssets.home2, color: KColors.accentColorD),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(KAssets.chat, color: Colors.grey),
      activeIcon: SvgPicture.asset(KAssets.chat2, color: KColors.accentColorD),
      label: 'Chat',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(KAssets.notification, color: Colors.grey),
      activeIcon: SvgPicture.asset(KAssets.notification_2, color: KColors.accentColorD),
      label: 'Notifications',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(KAssets.profile, color: Colors.grey),
      activeIcon: SvgPicture.asset(KAssets.profile2, color: KColors.accentColorD),
      label: 'Profile',
    ),
  ];
  List<Widget> screens = [
    HomeView(),
    ConversationList(),
    NotificationsView(),
    ProfileView(),
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(NewsBottomNavInitial());
  }
}
